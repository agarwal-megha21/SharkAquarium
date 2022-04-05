package com.example.SharkAquarium.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.model.equityHolding;
import com.example.SharkAquarium.model.order;
import com.example.SharkAquarium.model.pitch;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.EquityHoldingService;
import com.example.SharkAquarium.service.OrderService;
import com.example.SharkAquarium.service.PitchService;
import com.example.SharkAquarium.service.WalletService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private AuthenticateService authenticateService;
    @Autowired
    private WalletService walletService;
    @Autowired
    private EquityHoldingService equityHoldingService;
    @Autowired
    private PitchService pitchService;
    
    @GetMapping("/createBuyOrder")
    public String fetchSellOrders(HttpSession session, Model model) {
        String username = authenticateService.getCurrentUser(session);
        List<order> pList = orderService.getOrders(1, username);
        List<order> mList = orderService.getMyOrders(0, username);
        List<pitch> elist = pitchService.getAllPitches();
        LinkedHashMap<String, String> companies = new LinkedHashMap<String, String>();
        for (var pitch : elist) {
            companies.put(pitch.getCompany(), pitch.getCompany());
        }
        model.addAttribute("list", pList);
        model.addAttribute("mylist", mList);
        model.addAttribute("companies", companies);
        model.addAttribute("order", new order());
        return "createBuyOrder";
    }
 
    @PostMapping("/createBuyOrder")
    public String createBuyOrder(@ModelAttribute("order") order p, HttpSession session,
            RedirectAttributes redir){
        p.setDirection(0);
        p.setStatus(1);
        String username = authenticateService.getCurrentUser(session);
        // checks available money
        if(walletService.initiateOrder(p.getPrice()*p.getQuantity(), username))
            orderService.createOrder(p, username, p.getCompany());
        else{
            redir.addFlashAttribute("error", "Insufficient funds available");
            return "redirect:/createBuyOrder";
        }
        return "redirect:/createBuyOrder";
    }

    @GetMapping("/orders/sell/{id}")
    public String completeSellOrder(@PathVariable("id")int id, HttpSession session, RedirectAttributes redir) {
        order p = orderService.getOrder(id);
        // System.out.println(id + "");
        String username = authenticateService.getCurrentUser(session);
        if (!walletService.initiateOrder((p.getPrice() * p.getQuantity()), username)) {
            // System.out.println("Insufficient Wallet Amount");
            redir.addFlashAttribute("error", "Insufficient Wallet Amount");
            return "redirect:/createBuyOrder";
        }
        walletService.processOrder((p.getPrice() * p.getQuantity()), username);
        equityHoldingService.addEquity(p.getQuantity(), username, p.getCompany());
        walletService.addMoney((p.getPrice() * p.getQuantity()), p.getUsername()); 
        p.setStatus(2);
        p.setUsercompleted(username);
        equityHoldingService.processHolding(p.getQuantity(), p.getUsername(), p.getCompany());
        orderService.updateOrder(p, p.getId());
        redir.addFlashAttribute("message", "Order Completed");
        return "redirect:/createBuyOrder";
    }

    @GetMapping("/orders/delete/buy/{id}")
    public String deleteBuyOrder(@PathVariable("id")int id, HttpSession session){
        String username = authenticateService.getCurrentUser(session);
        orderService.cancelOrder(id); 
        order o = orderService.getOrder(id);
        walletService.recoverMoney(o.getPrice()*o.getQuantity(), username);
        return "redirect:/createBuyOrder";
    }

    @GetMapping("/createSellOrder")
    public String fetchBuyOrders(HttpSession session, Model model) {
        String username = authenticateService.getCurrentUser(session);
        List<order> pList = orderService.getOrders(0, username);
        List<order> mList = orderService.getMyOrders(1, username);
        List<equityHolding> elist = equityHoldingService.getHoldings(username);
        LinkedHashMap<String, String> companies = new LinkedHashMap<String, String>();
        for(var holding: elist){
            companies.put(holding.getCompany(), holding.getCompany());
        }
        model.addAttribute("list", pList);
        model.addAttribute("mylist", mList);
        model.addAttribute("companies", companies);
        model.addAttribute("order", new order());
        return "createSellOrder";
    }
    
    @PostMapping("/createSellOrder") 
    public String createSellOrder(@ModelAttribute("order") order p, HttpSession session,
            RedirectAttributes redir) {
        p.setDirection(1);
        p.setStatus(1); 
        String username = authenticateService.getCurrentUser(session);
        // check available equity for company 
        if(equityHoldingService.initiateHolding(p.getQuantity(), username, p.getCompany()))
            orderService.createOrder(p, username, p.getCompany());
        else{
            redir.addFlashAttribute("error", "Insufficient equity available");
            return "redirect:/createSellOrder";
        }
    
        return "redirect:/createSellOrder";
    }

    @GetMapping("/orders/buy/{id}")
    public String completeBuyOrder(@PathVariable("id")int id, HttpSession session, RedirectAttributes redir) {
        System.out.println (id+"");
        order p = orderService.getOrder(id);
        String username = authenticateService.getCurrentUser(session);
        boolean val = equityHoldingService.initiateHolding(p.getQuantity(), username, p.getCompany());
        if (!val) {
            redir.addFlashAttribute("error", "Insufficient equity available");
            return "redirect:/createSellOrder"; 
        } 
        equityHoldingService.processHolding(p.getQuantity(), username, p.getCompany());
        walletService.addMoney((p.getPrice() * p.getQuantity()), username);
        equityHoldingService.addEquity(p.getQuantity(), p.getUsername(), p.getCompany()); 
        p.setStatus(2);
        p.setUsercompleted(username);
        walletService.processOrder((p.getQuantity()*p.getPrice()), p.getUsername());
        orderService.updateOrder(p, p.getId());
        redir.addFlashAttribute("message", "Order Successful");
        return "redirect:/createSellOrder";
    } 

    @GetMapping("/orders/delete/sell/{id}")
    public String deleteSellOrder(@PathVariable("id")int id, HttpSession session){
        String username = authenticateService.getCurrentUser(session);
        orderService.cancelOrder(id); 
        order o = orderService.getOrder(id);
        equityHoldingService.recoverHolding(o.getQuantity(), username, o.getCompany());
        return "redirect:/createSellOrder"; 
    }
} 

