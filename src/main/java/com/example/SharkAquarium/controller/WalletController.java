package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.UserValidatorService;
import com.example.SharkAquarium.service.WalletService;
import com.example.SharkAquarium.model.userDetails;
import com.example.SharkAquarium.model.wallet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class WalletController {

    @Autowired
    private WalletService walletService;
    // @Autowired
    // private WalletDAO walletDAO;
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
        return "redirect:/wallet";
    }

    

}
