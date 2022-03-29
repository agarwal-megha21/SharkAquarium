package com.example.SharkAquarium.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.SharkAquarium.model.equityHolding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class EquityHoldingDAO {

    @Autowired
    private JdbcTemplate jt;

    private RowMapper<equityHolding> HoldingRowMapper = new RowMapper<equityHolding>() {
        @Override
        public equityHolding mapRow(ResultSet rs, int i) throws SQLException {
            equityHolding p = new equityHolding();
            p.setId(rs.getInt("id"));
            p.setUsername(rs.getString("username"));
            p.setCompany(rs.getString("company"));
            p.setTotalQuantity(rs.getInt("totalQuantity"));
            p.setAvailableQuantity(rs.getInt("availableQuantity"));
            // p.setTimestamp(rs.getLong("timestamp"));
            return p;
        } 
    };

    public boolean isEquityExists(String username, String company){
        String sql = "SELECT count(*) FROM equityHolding WHERE username=? and company=?";
        int cnt = jt.queryForObject(sql, Integer.class, username, company);
        return cnt>0;
    }
    
    public void createHolding(equityHolding p, String username, String company) {
        String sql = "INSERT INTO equityHolding (id, username, company, totalQuantity, availableQuantity) VALUES (?, ?, ?, ?, ? )";
        jt.update(sql, p.getId(), username, company, p.getTotalQuantity(), p.getAvailableQuantity());
    }

    public equityHolding getHolding(String username, String company) {
        String sql = "SELECT * FROM equityHolding WHERE username = ? and company=?";
        return jt.queryForObject(sql, HoldingRowMapper, username, company);
    }

    public void updateHolding(equityHolding p, int id) {
        String sql = "UPDATE equityHolding SET totalQuantity=?, availableQuantity=? where id=?";
        jt.update(sql, p.getTotalQuantity(), p.getAvailableQuantity(), id);
    } 
    
    public void updateHolding(equityHolding p, String username, String company) {
        String sql = "UPDATE equityHolding SET totalQuantity=?, availableQuantity=? where username=? and company=?";
        // System.out.println(p.getAvailableQuantity() + "");
        // System.out.println(p.getTotalQuantity() + "");
        // System.out.println(id + "");
        jt.update(sql, p.getTotalQuantity(), p.getAvailableQuantity(), username, company);
    }

   
    public void deleteHolding(int id) {
        String sql = "DELETE FROM equityHolding WHERE id=?";
        jt.update(sql, id);
    }

}
