package com.example.SharkAquarium.dao;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.example.SharkAquarium.model.transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TransactionDAO {
    
    @Autowired
    private JdbcTemplate jt;

    private RowMapper<transaction> pitchRowMapper = new RowMapper<transaction>() {
        @Override
        public transaction mapRow(ResultSet rs, int i) throws SQLException {
            transaction p = new transaction();
            p.setId(rs.getInt("id")); 
            p.setAmount(rs.getDouble("amount"));
            // p.setTimestamp(rs.getLong("timestamp"));
            return p;
        } 
    };

    public void createTransaction(transaction p, String username, int pitchId){
        String sql = "INSERT into transaction (id, pitchId, username, amount) VALUES (?, ?, ?, ?)";
        jt.update(sql, p.getId(), pitchId, username, p.getAmount());
    }

    public List<transaction> getTransactions(){
        String sql = "SELECT * FROM transaction";
        return jt.query(sql, pitchRowMapper);
    }

    public List<transaction> getTransactions(String username) {
        String sql = "SELECT * FROM transaction where username = ?";
        return jt.query(sql, pitchRowMapper, username);
    }
    
    public List<transaction> getTransactions(String username, int pitchId) {
        String sql = "SELECT * FROM transaction where username = ? and pitchId = ?";
        return jt.query(sql, pitchRowMapper, username, pitchId);
    }

}



