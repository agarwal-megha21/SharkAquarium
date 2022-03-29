package com.example.SharkAquarium.service;

import com.example.SharkAquarium.dao.EquityHoldingDAO;
import com.example.SharkAquarium.model.equityHolding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EquityHoldingService {

    @Autowired
    private EquityHoldingDAO equityHoldingDAO;

    public void addEquity(int amount, String userName, String company) {
        equityHolding w;
        if(equityHoldingDAO.isEquityExists(userName, company)){
            w = equityHoldingDAO.getHolding(userName, company);
        }
        else{
            equityHolding e = new equityHolding();
            e.setTotalQuantity(0);
            e.setAvailableQuantity(0);
            createHolding(e, userName, company);
            w = e; 
         }
        
        w.setAvailableQuantity(w.getAvailableQuantity() + amount);
        //System.out.println(w.getAvailableQuantity()+"");
        w.setTotalQuantity(w.getTotalQuantity() + amount);
        //System.out.println(w.getTotalQuantity()+"");
        equityHoldingDAO.updateHolding(w, userName, company);
    }

    // when I cancel my order
    public void recoverHolding(int amount, String userName, String company) {
        equityHolding w = equityHoldingDAO.getHolding(userName, company);
        w.setAvailableQuantity(w.getAvailableQuantity() + amount);
        equityHoldingDAO.updateHolding(w, w.getId());
    }

    // simply creating an order(this hasn't been completed)
    public boolean initiateHolding(int amount, String userName, String company) {
        equityHolding w = equityHoldingDAO.getHolding(userName, company);
        if (amount <= w.getAvailableQuantity()) {
            w.setAvailableQuantity(w.getAvailableQuantity() - amount);
            w.setTotalQuantity(w.getTotalQuantity());
            equityHoldingDAO.updateHolding(w, w.getId());
            return true;
        } else
            System.out.println("Insufficient Available Balance");
        return false;
    }

    // someone completes the pre-existing order
    public void processOrder(int amount, String userName, String company) {
        equityHolding w = equityHoldingDAO.getHolding(userName, company);
        w.setAvailableQuantity(w.getAvailableQuantity());
        w.setTotalQuantity(w.getTotalQuantity() - amount);
        equityHoldingDAO.updateHolding(w, w.getId());
    }

    public void createHolding(equityHolding p, String username, String company) {
        equityHoldingDAO.createHolding(p, username, company);
    }

    public void updateHolding(equityHolding p, int id) {
        equityHoldingDAO.updateHolding(p, id);
    }

    public equityHolding getHolding(String username, String company) {
        return equityHoldingDAO.getHolding(username, company);
    }
}
