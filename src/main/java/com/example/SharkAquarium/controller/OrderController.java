package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.model.order;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.EquityHoldingService;
import com.example.SharkAquarium.service.OrderService;
import com.example.SharkAquarium.service.WalletService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    
    @GetMapping("/createBuyOrder")
    public String openBuyOrderForm() {
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
        return "redirect:/welcome";
    }

    @GetMapping("/createSellOrder")
    public String openSellOrderForm() {
        return "createSellOrder";
    }

    @PostMapping("/createSellOrder")
    public String createSellOrder(@ModelAttribute("order") order p, HttpSession session,
            RedirectAttributes redir) {
        p.setDirection(1);
        p.setStatus(1); 
        String username = authenticateService.getCurrentUser(session);
        // check available equity for company 
        if(equityHoldingService.initiateHolding(p.getQuantity(), username, p.getCompany()));
            orderService.createOrder(p, username, p.getCompany());
        return "redirect:/welcome";
    }

}

