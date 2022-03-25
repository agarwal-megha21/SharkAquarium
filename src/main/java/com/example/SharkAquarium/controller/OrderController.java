package com.example.SharkAquarium.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession; 

import com.example.SharkAquarium.dao.OrderDAO;
import com.example.SharkAquarium.model.order;
import com.example.SharkAquarium.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    private OrderDAO orderDAO;

    @PostMapping("/create_order")
    public String create_order(@ModelAttribute("order") order o, HttpSession session, RedirectAttributes redir) {

        orderService.createOrder(o);

        System.out.println("Order created");

        return "redirect:/welcome";
    }
}
