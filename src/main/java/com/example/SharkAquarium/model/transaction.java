package com.example.SharkAquarium.model;

public class transaction {
    
    private int id;
    private double amount;
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

    public double getAmount(){
        return this.amount;
    }
    public void setAmount(double amount){
        this.amount = amount;
    }

    public String getUsername(){
        return this.username;
    }
    public void setUsername(String username){
        this.username = username;
    }

}
