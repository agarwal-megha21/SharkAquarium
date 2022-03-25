package com.example.SharkAquarium.model;

public class order {
    private int id;
    private String company;
    private int direction; // 0 buy 1 sell
    private int quantity;
    private String username;
    private double price; // per stock basis
    private int status; // 1 active 0 cancelled 2 completed

    public int getId() {
        return id;
    }
    public String getCompany() {
        return company;
    }
    public int getDirection() {
        return direction;
    }
    public int getQuantity() {
        return quantity;
    }
    public String getUsername() {
        return username;
    }
    public double getPrice() {
        return price;
    }
    public int getStatus() {
        return status;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setCompany(String company) {
        this.company = company;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public void setDirection(int direction) {
        this.direction = direction;
    }
    public void setStatus(int status) {
        this.status = status;
    }
}
