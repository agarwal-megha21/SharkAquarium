package com.example.SharkAquarium.model;


public class wallet {
    private int id;
    private String username;
    private double totalAmount;
    private double availableAmount;

    public wallet(){
        totalAmount = 0;
        availableAmount = 0;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public double getTotalAmount() {
        return totalAmount;
    }
    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public double getAvailableAmount() {
        return availableAmount;
    }
    public void setAvailableAmount(double availableAmount) {
        this.availableAmount = availableAmount;
    }
    
    
}