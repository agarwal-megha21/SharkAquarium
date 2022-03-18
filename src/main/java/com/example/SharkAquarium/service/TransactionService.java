package com.example.SharkAquarium.service;

import java.util.List;

import com.example.SharkAquarium.dao.TransactionDAO;
import com.example.SharkAquarium.model.transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransactionService {

    @Autowired
    private TransactionDAO transactionDAO;

    public void createTransaction(transaction p, String username, int pitchId) {
        transactionDAO.createTransaction(p, username, pitchId);
    }

    public List<transaction> getTransactions() {
        return transactionDAO.getTransactions();
    }

    public List<transaction> getTransactions(String username) {
        return transactionDAO.getTransactions(username);
    }

    public List<transaction> getTransactions(String username, int pitchId) {
        return transactionDAO.getTransactions(username, pitchId);
    }
}
