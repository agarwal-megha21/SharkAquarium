package com.example.SharkAquarium.model;



public class pitch{
    private int id;
    private String description;
    private double amount;
    private String userName;
    
    public pitch(){}
    public String getDescription() {
        return description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName(){
        return this.userName;
    }

    public void setUserName(String username){
        this.userName = username;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public double getAmount(){
        return this.amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }  
}
