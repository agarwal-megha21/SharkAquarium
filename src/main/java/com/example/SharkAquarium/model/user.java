package com.example.SharkAquarium.model;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class user {
    
	private String username;
    private String password;
    private String passwordConfirm;
    private String role; 

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "username") 
    private userDetails cst; 
        
    public userDetails getUserDetails() {
        return cst;
    }

    public void setUserDetails(userDetails cst) {
        this.cst = cst;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
