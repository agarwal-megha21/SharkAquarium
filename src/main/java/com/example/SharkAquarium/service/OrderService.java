package com.example.SharkAquarium.service;

import java.util.List;

import com.example.SharkAquarium.dao.OrderDAO;
import com.example.SharkAquarium.model.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
    @Autowired
    private OrderDAO orderDAO;

    public void createOrder(order o)
    {
        orderDAO.createOrder(o);
    }
}