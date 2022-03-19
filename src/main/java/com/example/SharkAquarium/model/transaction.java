package com.example.SharkAquarium.model;

public class transaction {
    
    private int id;
    private double amountPerStock;
    private int numberOfStocks;
    private String username;
    private int pitchId;

    public transaction(){}

    public int getId(){
        return id;
    };
    public void setId(int id){
        this.id = id;
    }

    public int getPitchId(){
        return this.pitchId;
    }
    public void setPitchId(int pitchId){
        this.pitchId = pitchId;
    }

    public double getAmountPerStock(){
        return this.amountPerStock;
    }
    public void setAmountPerStock(double amountPerStock){
        this.amountPerStock = amountPerStock;
    }

    public double getNumberOfStocks() {
        return this.numberOfStocks;
    }

    public void setNumberOfStocks(int numberOfStocks) {
        this.numberOfStocks = numberOfStocks;
    }

    public String getUsername(){
        return this.username;
    }
    public void setUsername(String username){
        this.username = username;
    }

}
