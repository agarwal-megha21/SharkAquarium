package com.example.SharkAquarium.model;

import javax.persistence.IdClass;

public class order {
    private int id;
    private int orderId;
    private int tickerId;
    private String orderType;
    private double orderPrice;

    public order() {}

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public int getOrderId()
    {
        return orderId;
    }

    public void setOrderId(int orderId)
    {
        this.orderId = orderId;
    }

    public int getTickerId()
    {
        return tickerId;
    }

    public void setTickerId(int tickerId)
    {
        this.tickerId = tickerId;
    }

    public String getorderType()
    {
        return orderType;
    }

    public void setOrderType(String orderType)
    {
        this.orderType = orderType;
    }

    public double getOrderPrice()
    {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice)
    {
        this.orderPrice = orderPrice;
    }
}
