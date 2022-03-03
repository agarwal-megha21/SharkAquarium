package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.dao.UserDAO;
import com.example.SharkAquarium.model.user;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.validator.UserValidator;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {

    @Autowired
    private UserValidator userValidator;
    @Autowired
    private AuthenticateService authenticateService;
    @Autowired
    private UserDAO userDAO;

    @GetMapping("/")
    public String test() {
        return "index";
    }

    @GetMapping("/profile")
    public String profile() {
        return "profile";
    }

    @GetMapping("/register")
    public String showForm(Model model) {
        user user = new user();
        model.addAttribute("userForm", user);
        return "register";
    }

    @PostMapping("/register")
    public String submitForm(@ModelAttribute("userForm") user userForm, HttpSession session, BindingResult bindingResult, RedirectAttributes redir) {
        System.out.println(userForm.getUsername());
        userValidator.validate(userForm, bindingResult);
		if (bindingResult.hasErrors()) {	
	        return "register";
	    }
		userDAO.save(userForm);
		String username = userForm.getUsername();
		authenticateService.loginUser(session, username);
		return "redirect:/customer_profile";
    }

    @GetMapping("/login")
    public String login(Model model, HttpSession session, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

		if (authenticateService.isAuthenticated(session)) {
			return "redirect:/customer_profile";
        }
        
		model.addAttribute("user", new user()); 
        return "login";
    }

    @PostMapping("/login")
	public String postLogin(@ModelAttribute("user") user userForm, Model model, HttpSession session, RedirectAttributes redir) {
        
        String username = userForm.getUsername();
        String password = userForm.getPassword();

		try {
            if(authenticateService.checkCredentials(username, password)) {
                authenticateService.loginUser(session, username);
        		return "redirect:/customer_profile";
            }

		} catch (Exception e) {
        }
        model.addAttribute("user", userForm);
		redir.addFlashAttribute("message", "Invalid login credentials");
        return "redirect:/login";
    } 

    @GetMapping("/logout")  
    public String logout(HttpSession session){ 
        authenticateService.logoutUser(session);
        return "redirect:/login";
    } 


}
