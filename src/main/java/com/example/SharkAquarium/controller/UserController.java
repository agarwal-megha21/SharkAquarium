package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.dao.CustomerDAO;
import com.example.SharkAquarium.model.userDetails;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.UserValidatorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes; 

@Controller
public class UserController {

    @Autowired
    private UserValidatorService customerService;
    @Autowired
    private AuthenticateService authenticateService;
    // @Autowired
    // private UserDAO userDAO;

    @Autowired
    private CustomerDAO customerDAO;
    
    @GetMapping("/customer_profile")
    public String customer_profile(HttpSession session) {
       if (customerDAO.isCustomerExists(authenticateService.getCurrentUser(session))){
           return "redirect:/welcome";
       }
        System.out.println("creating account");
        return "userDetails";
    }


    @PostMapping("/customer_profile")
    public String customer_profile(@ModelAttribute("customerDetails") userDetails customer, HttpSession session,
            RedirectAttributes redir) {
        String username = authenticateService.getCurrentUser(session);
        customerService.createCustomer(customer, username);
        // customerService.addAdress(customer, username);
        System.out.println("finish");
        redir.addFlashAttribute("message", "Profile Created Successfully");
        return "redirect:/welcome";
    }

    @GetMapping("/welcome")
    public String welcomeUser(HttpSession session, Model model){
        String userName = authenticateService.getCurrentUser(session);
        userDetails user = customerService.getCustomer(userName);
        model.addAttribute("customer", user);
        return "profile";
    }



}
