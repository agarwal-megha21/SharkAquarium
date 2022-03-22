package com.example.SharkAquarium.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.example.SharkAquarium.model.pitch;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository; 


@Repository
public class PitchDAO {
    @Autowired 
    private JdbcTemplate jt;

    private RowMapper<pitch> pitchRowMapper = new RowMapper<pitch>() {
        @Override
        public pitch mapRow(ResultSet rs, int i) throws SQLException {
            pitch p = new pitch();
            p.setId(rs.getInt("id"));
            p.setCompany(rs.getString("company"));
            p.setDescription(rs.getString("description"));
            p.setAmountPerStock(rs.getDouble("amountPerStock"));
            p.setNumberOfStocks(rs.getInt("numberOfStocks"));
            p.setAvailableStocks(rs.getInt("availableStocks"));
            p.setUserName(rs.getString("username"));
            // p.setTimestamp(rs.getLong("timestamp"));
            return p;
        }
    };  
     
    public void createPitch(pitch p, String username) { 
        if(duplicateCompanyPitch(p.getCompany()))
            System.out.println("Duplicate Company Name: " + p.getCompany());
        else{ 
            String sql = "INSERT INTO pitch (id, company, userName, description, amountPerStock, numberOfStocks, availableStocks) VALUES (?, ?, ?, ?, ?, ?, ? )";
            jt.update(sql, p.getId(), p.getCompany(), username, p.getDescription(), p.getAmountPerStock(), p.getNumberOfStocks(), p.getNumberOfStocks());
        }
    }

    public boolean hasAnyPitch(String username) {
        String sql = "SELECT count(*) FROM pitch WHERE username = ?";
        int cnt = jt.queryForObject(sql, Integer.class, username);
        return cnt > 0;
    }
    
    public boolean duplicateCompanyPitch(String company){
        String sql = "SELECT count(*) FROM pitch WHERE company = ?";
        int cnt = jt.queryForObject(sql, Integer.class, company);
        return cnt > 0;
    }

    public void updatePitch(pitch p, int id) {
        
        System.out.println(id+""); 
        // if (duplicateCompanyPitch(p.getCompany()))
        //     System.out.println("Duplicate Company Name: " + p.getCompany());
    
        String sql = "UPDATE pitch SET company=?, description=?, amountPerStock=?, numberOfStocks=?, availableStocks=? where id = ?";
        jt.update(sql, p.getCompany(), p.getDescription(), p.getAmountPerStock(), p.getNumberOfStocks(), p.getAvailableStocks(),id);
        
    }

    public void deletePitch(int id) {
        String sql = "DELETE FROM pitch WHERE id = ?";
        jt.update(sql, id);
    }

    public pitch getPitch(int id) {
        String sql = "SELECT * FROM pitch WHERE id = ?";
        return jt.queryForObject(sql, pitchRowMapper, id);
    }
    
    public List<pitch> getAllPitches() {
        String sql = "SELECT * FROM pitch";
        return jt.query(sql, pitchRowMapper);
    } 

    public List<pitch> getAllPitches(String username) {
        String sql = "SELECT * FROM pitch where username = ?";
        return jt.query(sql, pitchRowMapper, username);
    }

}

