package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpSession; 

import com.example.SharkAquarium.dao.PitchDAO;
import com.example.SharkAquarium.model.pitch;
import com.example.SharkAquarium.service.AuthenticateService;
import com.example.SharkAquarium.service.PitchService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class PitchController {
    
    @Autowired
    private PitchService pitchService;
    @Autowired
    private PitchDAO pitchDAO;
    @Autowired
    private AuthenticateService authenticateService;

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
    
}
