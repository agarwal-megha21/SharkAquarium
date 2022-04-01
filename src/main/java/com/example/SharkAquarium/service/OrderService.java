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

    public List<order> getOrders(String company, int direction, String username) {
        return orderDAO.getOrders(company, direction, 1, username);
    }
    
    public List<order> getOrders(String company, String username) {
        return orderDAO.getOrderByCompany(company, 1, username);
    }
    
    public List<order> getOrders(int direction, String username) {
        return orderDAO.getOrderByDirection(direction, 1, username);
    }

    public List<order> getMyOrders(int direction, String username) {
        return orderDAO.getMyOrders(direction, 1, username);
    }

    public order getOrder(int id){
        return orderDAO.getOrder(id);
    }

    public void cancelOrder(int id){
        order o = getOrder(id);
        o.setStatus(0);
        orderDAO.updateOrder(o, id);
    }
}
