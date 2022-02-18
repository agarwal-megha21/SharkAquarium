package com.example.SharkAquarium.controller;

import com.example.SharkAquarium.model.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/")
    public String test() {
        return "Hello Everyone!";
    }

    @GetMapping("/register")
    public String showForm(Model model) {
        user user = new user();
        model.addAttribute("userForm", user);
        return "register";
    }

}
