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

    public void createOrder(order p, String username, String company) {
        orderDAO.createOrder(p, username, company);
    }

    public void updateOrder(order p, int id) {
        orderDAO.updateOrder(p, id);
    } 

    public List<order> getOrders(String company, int direction) {
        return orderDAO.getOrders(company, direction, 1);
    }
    
    public List<order> getOrders(String company) {
        return orderDAO.getOrderByCompany(company, 1);
    }
    
    public List<order> getOrders(int direction) {
        return orderDAO.getOrderByDirection(direction, 1);
    }

    public order getOrder(int id){
        return orderDAO.getOrder(id);
    }
}
