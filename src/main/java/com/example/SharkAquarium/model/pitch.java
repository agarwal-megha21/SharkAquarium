package com.example.SharkAquarium.model;


public class pitch{
    private int id;
    private String company;
    private String description;
    private double amountPerStock;
    private int numberOfStocks;
    private int availableStocks;
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
    
    public String getCompany(){
        return this.company;
    }

    public void setCompany(String company){
        this.company = company;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public double getAmountPerStock(){
        return this.amountPerStock;
    }

    public void setAmountPerStock(double amountPerStock) {
        this.amountPerStock = amountPerStock;
    } 
    
    public int getNumberOfStocks() {
        return this.numberOfStocks;
    }

    public void setNumberOfStocks(int numberOfStocks) {
        this.numberOfStocks = numberOfStocks;
    }
    
    public int getAvailableStocks() {
        return this.availableStocks;
    }

    public void setAvailableStocks(int availableStocks) {
        this.availableStocks = availableStocks;
    }

}
