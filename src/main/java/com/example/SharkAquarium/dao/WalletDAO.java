package com.example.SharkAquarium.dao;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.SharkAquarium.model.wallet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository 
public class WalletDAO {

    @Autowired
    private JdbcTemplate jt;

    private RowMapper<wallet> walletRowMapper = new RowMapper<wallet>() {
        @Override
        public wallet mapRow(ResultSet rs, int i) throws SQLException {
            wallet p = new wallet();
            p.setId(rs.getInt("id"));
            p.setUsername(rs.getString("username"));
            p.setTotalAmount(rs.getDouble("totalAmount"));
            p.setAvailableAmount(rs.getDouble("availableAmount"));
            // p.setTimestamp(rs.getLong("timestamp"));
            return p;
        }
    }; 
    
 
    public void createWallet(wallet p, String username){
        String sql = "INSERT INTO wallet (id, username, totalAmount, availableAmount) VALUES (?, ?, ?, ? )";
        jt.update(sql, p.getId(), username, p.getTotalAmount(), p.getAvailableAmount());
    }
    
    
    public wallet getWallet(String username){
        String sql = "SELECT * FROM wallet WHERE username = ?";
        return jt.queryForObject(sql, walletRowMapper, username);
    }
    
    public void updateWallet(wallet p, int id){
        String sql = "UPDATE wallet SET totalAmount=?, availableAmount=? where id=?";
        jt.update(sql, p.getTotalAmount(), p.getAvailableAmount(), id); 
    }

    public void deleteWallet(int id){
        String sql = "DELETE FROM wallet WHERE id=?";
        jt.update(sql, id);
    } 
    
}
