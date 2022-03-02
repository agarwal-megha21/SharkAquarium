package com.example.SharkAquarium.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.example.SharkAquarium.model.userDetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository 
public class CustomerDAO{
    
    @Autowired 
    private JdbcTemplate jt;

    private RowMapper<userDetails> customerRowMapper = new RowMapper<userDetails>() {
        @Override
        public userDetails mapRow(ResultSet rs, int i) throws SQLException {
            userDetails customer = new userDetails();
            customer.setFirstName(rs.getString("firstName"));
            customer.setMiddleName(rs.getString("middleName"));
            customer.setLastName(rs.getString("lastName"));
            customer.setStreetName(rs.getString("streetName"));
            customer.setHouseNo(rs.getString("houseNo"));
            customer.setCity(rs.getString("city"));
            customer.setPhoneNo(rs.getString("phoneNo"));
            customer.setEmailID(rs.getString("emailID"));
            customer.setGender(rs.getString("gender"));
            customer.setPincode(rs.getString("pincode"));
            customer.setId(rs.getInt("id"));
            customer.setUsername(rs.getString("username"));
            return customer;
        }
    };

    public void createCustomer(userDetails cst, String username) {
        String sql = "INSERT INTO userDetails (firstName, middleName, lastName, houseNo, city, pincode, streetName, phoneNo, gender, emailID, username) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
        jt.update(sql, cst.getFirstName(), cst.getMiddleName(), cst.getLastName(), cst.getHouseNo(), cst.getCity(),
                cst.getPincode(), cst.getStreetName(), cst.getPhoneNo(), cst.getGender(), cst.getEmailID(), username);
    } 

     public boolean isCustomerExists(String username) {
         
        String sql = "SELECT count(*) FROM userdetails WHERE username = ?";
        int cnt = jt.queryForObject(sql, Integer.class, username);
        return cnt > 0;
    }


    public void updateCustomer(userDetails cst, String username) {
        System.out.println(username);
        String sql = "UPDATE userdetails SET firstName=?, middleName=?, lastName=?, houseNo=?, city=?, pincode=?, streetName=?, phoneNo=?, gender=?, emailID=? where username = ?";
            
        jt.update(
                sql, cst.getFirstName(), cst.getMiddleName(), cst.getLastName(), cst.getHouseNo(), cst.getCity(),
                cst.getPincode(), cst.getStreetName(),
                cst.getPhoneNo(), cst.getGender(), cst.getEmailID(), username);
    }

    public int getUserIDbyUsername(String username) {
        String sql = "SELECT id FROM userdetails WHERE username = ?";
        return jt.queryForObject(sql, (rs, i) -> {
            return rs.getInt("id");
        }, username);
    }

    public void deleteCustomer(String username) {
        String sql = "DELETE FROM userdetails WHERE username = ?";
        jt.update(sql, username);
    }

    public userDetails getCustomer(String username) {
        String sql = "SELECT * FROM userdetails WHERE username = ?";
        return jt.queryForObject(sql, customerRowMapper, username);
    }

    public void addAdress(userDetails cst, String username) {
        String sql = "INSERT INTO addressDetails (city, streetName, pincode, houseNo, username) VALUES (?,?,?,?,?)";
        jt.update(sql, cst.getCity(), cst.getStreetName(), cst.getPincode(), cst.getHouseNo(), username);
    }

    public List<userDetails> getAllCustomers() {
        String sql = "SELECT * FROM userDetails";
        return jt.query(sql, customerRowMapper);
    }

    public void deleteAddressHistory(String username) {
        String sql = "DELETE FROM addressDetails WHERE username = ?";
        jt.update(sql, username);
}
}
