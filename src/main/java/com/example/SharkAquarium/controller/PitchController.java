package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession; 

import com.example.SharkAquarium.model.pitch;
import com.example.SharkAquarium.model.transaction;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.EquityHoldingService;
import com.example.SharkAquarium.service.PitchService;
import com.example.SharkAquarium.service.TransactionService;
import com.example.SharkAquarium.service.WalletService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class PitchController {
    
    @Autowired
    private PitchService pitchService;
    @Autowired
    private AuthenticateService authenticateService;
    @Autowired
    private TransactionService transactionService;
    @Autowired
    private WalletService walletService;
    @Autowired
    private EquityHoldingService equityHoldingService;

    @GetMapping("/create_pitch")
    public String create_pitch(){
        return "pitch";
    }
   
    @PostMapping("/create_pitch")
    public String create_pitch(@ModelAttribute("pitch") pitch p, HttpSession session,
            RedirectAttributes redir) {
    
        String username = authenticateService.getCurrentUser(session);
        pitchService.createPitch(p, username);
        System.out.println(p.getCompany());
        System.out.println("Pitch created");
        return "redirect:/welcome"; 
    }
    
    @GetMapping("/pitches/invest/{id}") 
    public String invest(@PathVariable("id")int pitchId, HttpSession session, HttpServletRequest request){
       // System.out.println(pitchId+""); 
        int numStocks = Integer.valueOf(request.getParameter("numberOfStocks"));
        // System.out.println("Number of stocks selected = "+numStocks);
        
        pitch p = pitchService.getPitch(pitchId);
        if(p.getAvailableStocks() >= numStocks){
            
            String username = authenticateService.getCurrentUser(session);
           // wallet w = walletService.getWallet(username);
            if(!walletService.initiateOrder((p.getAmountPerStock()*numStocks), username)){
                System.out.println("Insufficient Wallet Amount");
                return "redirect:/welcome";
            }
            walletService.processOrder((p.getAmountPerStock()*numStocks), username);
            equityHoldingService.addEquity(numStocks, username, p.getCompany());
            transaction t = new transaction();
            
            t.setAmountPerStock(p.getAmountPerStock());
            t.setNumberOfStocks(numStocks);
            transactionService.createTransaction(t, username, pitchId);
            
            p.setAvailableStocks(p.getAvailableStocks()-numStocks);
            pitchService.updatePitch(p, pitchId);

            // entrepreneur wallet updated
            // System.out.println(p.getUserName());
            walletService.addMoney((p.getAmountPerStock()*numStocks), p.getUserName());

            
        }else
        System.out.println("Transaction failed: please reduce stocks count");
         return "redirect:/welcome";
        
    }
}
