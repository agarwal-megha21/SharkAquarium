package com.example.SharkAquarium.service;

import javax.servlet.http.HttpSession;

import com.example.SharkAquarium.dao.UserDAO;
import com.example.SharkAquarium.model.user;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class AuthenticateService { 
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    private String loggedUser = "AUTH_USER";

    public String getCurrentUser(HttpSession session) {
        try {
            return session.getAttribute(loggedUser).toString();
        } catch (Exception e) {
            return null;
        }
    }

    public Boolean isAuthenticated(HttpSession session) {
        return getCurrentUser(session) != null;
    }

    public void loginUser(HttpSession session, String username) {
        session.setAttribute(loggedUser, username);
    }

    public void logoutUser(HttpSession session){
        
        System.out.println("Logging out user");
        session.removeAttribute(loggedUser);
    }

    public String getRole(String username) {
		return userDAO.getRole(username);
	}

    public user findByUsername(String username) {
        return userDAO.findByUsername(username);
    }

    public Boolean checkCredentials(String username, String password) {
        user user = userDAO.findByUsername(username);
        if(bCryptPasswordEncoder.matches(password,user.getPassword()))
            return true;
        return false;
    }
}
