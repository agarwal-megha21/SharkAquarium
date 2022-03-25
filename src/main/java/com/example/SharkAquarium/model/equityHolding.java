package com.example.SharkAquarium.model;

public class equityHolding {
    int id;
    String username;
    String company;
    int totalQuantity;
    int availableQuantity;

    public void setId(int id){
        this.id = id;
    }

    public int getId(){
        return this.id;
    }

    public void setUsername(String username){
        this.username = username;
    }
    public String getUsername(){
        return this.username;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCompany() {
        return this.company;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public int getTotalQuantity() {
        return this.totalQuantity;
    }

    public void setAvailableQuantity(int availableQuantity) {
        this.availableQuantity = availableQuantity;
    }

    public int getAvailableQuantity() {
        return this.availableQuantity;
    }

}
