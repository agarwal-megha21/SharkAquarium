package com.example.SharkAquarium.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.example.SharkAquarium.model.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {
    @Autowired
    private JdbcTemplate jt;

    private RowMapper<order> orderRowMapper = new RowMapper<order>() {
        @Override
        public order mapRow(ResultSet rs, int i) throws SQLException {
            order p = new order();
            p.setId(rs.getInt("id"));
            p.setCompany(rs.getString("company"));
            p.setUsername(rs.getString("username"));
            p.setDirection(rs.getInt("direction"));
            p.setQuantity(rs.getInt("quantity"));
            p.setPrice(rs.getDouble("price"));
            p.setStatus(rs.getInt("status"));
            // p.setTimestamp(rs.getLong("timestamp"));
            return p;
        }
    };

    public void createOrder(order p, String username, String company) {
        String sql = "INSERT INTO orders (id, company, userName, direction, price, quantity, status) VALUES (?, ?, ?, ?, ?, ?, ? )";
        jt.update(sql, p.getId(), company, username, p.getDirection(), p.getPrice(), p.getQuantity(), p.getStatus());
    }

    public order getOrder(int id) {
        String sql = "SELECT * FROM orders WHERE id = ?";
        return jt.queryForObject(sql, orderRowMapper, id);
    }

    public List<order> getOrderByCompany(String company, int status){ 
        String sql = "SELECT * from orders WHERE company=? and status=?";
        return jt.query(sql, orderRowMapper, company, status);
    }

    public List<order> getOrderByDirection(int direction, int status) {
        String sql = "SELECT * from orders WHERE direction=? and status=?";
        return jt.query(sql, orderRowMapper, direction, status);
    } 
    
    public List<order> getOrders(String company, int direction, int status) {
        String sql = "SELECT * from orders WHERE company=? and direction=? and status=?";
        return jt.query(sql, orderRowMapper, company, direction, status); 
    }
  
    public void updateOrder(order p, int id) {

        String sql = "UPDATE orders SET company=?, direction=?, price=?, quantity=?, status=? where id = ?";
        jt.update(sql, p.getCompany(), p.getDirection(), p.getPrice(), p.getQuantity(), p.getStatus(), id);
    }

}
