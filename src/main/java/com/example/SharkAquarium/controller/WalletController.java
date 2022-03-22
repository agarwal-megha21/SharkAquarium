package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.dao.WalletDAO;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.UserValidatorService;
import com.example.SharkAquarium.service.WalletService;
import com.example.SharkAquarium.model.userDetails;
import com.example.SharkAquarium.model.wallet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class WalletController {

    @Autowired
    private WalletService walletService;
    @Autowired
    private WalletDAO walletDAO;
    @Autowired
    private AuthenticateService authenticateService;
    @Autowired
    private UserValidatorService customerService;

    @GetMapping("/wallet")
    public String wallet(HttpSession session, Model model) {
        String username = authenticateService.getCurrentUser(session);
        wallet w = walletService.getWallet(username);
        userDetails user = customerService.getCustomer(username);
        model.addAttribute("wallet", w);
        model.addAttribute("customer", user);
        return "wallet"; 
    } 
    
    @GetMapping("/wallet/addMoney")
    public String addMoney(HttpSession session, HttpServletRequest request) {
        String username = authenticateService.getCurrentUser(session);
        double amount = Double.valueOf(request.getParameter("amount"));
        walletService.addMoney(amount, username); 
        System.out.println(amount + " added");
        return "wallet";
    }

    // @GetMapping("/wallet/{id}")
    // public String invest(@PathVariable("id") int pitchId, HttpSession session, HttpServletRequest request) {
    //     // System.out.println(pitchId+"");
    //     int numStocks = Integer.valueOf(request.getParameter("numberOfStocks"));
    //     // System.out.println("Number of stocks selected = "+numStocks);

    //     pitch p = pitchService.getPitch(pitchId);
    //     if (p.getAvailableStocks() >= numStocks) {
    //         String username = authenticateService.getCurrentUser(session);
    //         transaction t = new transaction();

    //         t.setAmountPerStock(p.getAmountPerStock());
    //         t.setNumberOfStocks(numStocks);
    //         transactionService.createTransaction(t, username, pitchId);

    //         p.setAvailableStocks(p.getAvailableStocks() - numStocks);
    //         pitchService.updatePitch(p, pitchId);

    //     } else
    //         System.out.println("Transaction failed: please reduce stocks count");
    //     return "redirect:/welcome";

    // }

}
