package com.example.SharkAquarium.service;

import com.example.SharkAquarium.dao.WalletDAO;
import com.example.SharkAquarium.model.wallet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WalletService {
    
    @Autowired
    private WalletDAO walletDAO;

    public void addMoney(double amount, String userName){
        wallet w = walletDAO.getWallet(userName);
        w.setAvailableAmount(w.getAvailableAmount() + amount);
        w.setTotalAmount(w.getTotalAmount() + amount);
        walletDAO.updateWallet(w, w.getId());
    }

    // when i cancel my order 
    public void recoverMoney(double amount, String userName) {
        wallet w = walletDAO.getWallet(userName);
        w.setAvailableAmount(w.getAvailableAmount() + amount);
        walletDAO.updateWallet(w, w.getId());
    }
    
    // simply creating an order(this hasn't been completed)
    public boolean initiateOrder(double amount, String userName) {
        wallet w = walletDAO.getWallet(userName);
        if(amount <= w.getAvailableAmount()){
            w.setAvailableAmount(w.getAvailableAmount() - amount);
            w.setTotalAmount(w.getTotalAmount());
            walletDAO.updateWallet(w, w.getId());
            return true;
        }
        else
            System.out.println("Insufficient Available Balance");
            return false;
    }
    
    // someone completes the pre-existing order
    public void processOrder(double amount, String userName) {
        wallet w = walletDAO.getWallet(userName);
        w.setAvailableAmount(w.getAvailableAmount());
        w.setTotalAmount(w.getTotalAmount() - amount);
        walletDAO.updateWallet(w, w.getId());
    }
    
    public void createWallet(wallet p, String username){
        walletDAO.createWallet(p, username);
    }
    
    public void updateWallet(wallet p, int id){
        walletDAO.updateWallet(p, id);
    }

    public wallet getWallet(String username){
        return walletDAO.getWallet(username);
    }
}
