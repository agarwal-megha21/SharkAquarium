package com.example.SharkAquarium.service;

import java.util.List;

import com.example.SharkAquarium.dao.CustomerDAO;
import com.example.SharkAquarium.model.userDetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserValidatorService {
    @Autowired
    private CustomerDAO customerDAO;
    
    public void createCustomer(userDetails cst, String username) {
        System.out.println("serivce reached");
        customerDAO.createCustomer(cst, username);
    }

    public void deleteCustomer(String username) {
        customerDAO.deleteCustomer(username);
    }

    public void updateCustomer(userDetails customer, String username) {
        customerDAO.updateCustomer(customer, username);
    }

    public userDetails getCustomer(String username) {
        return customerDAO.getCustomer(username);
    }

    public int getUserIDbyUsername(String username) {
        return customerDAO.getUserIDbyUsername(username);
    }

    public void addAdress(userDetails customer, String username) {
        customerDAO.addAdress(customer, username);
    }

    public List<userDetails> getAllCustomers() {
        return customerDAO.getAllCustomers();
    }

    public void deleteAddressHistory(String username) {
        customerDAO.deleteAddressHistory(username);
    }
}
