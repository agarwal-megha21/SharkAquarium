package com.example.SharkAquarium.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.example.SharkAquarium.model.order;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {

    @Autowired
    private JdbcTemplate jt;

    private RowMapper<order> orderRowMapper = new RowMapper<order>() {
        @Override
        public order mapRow(ResultSet rs, int i) throws SQLException {
            order o = new order();
            o.setId(rs.getInt("id"));
            o.setOrderId(rs.getInt("orderId"));
            o.setTickerId(rs.getInt("tickerId"));
            o.setOrderType(rs.getString("orderType"));
            o.setOrderPrice(rs.getDouble("orderPrice"));

            return o;
        }
    };

    public void createOrder(order o)
    {
        String sql = "INSERT INTO order (id, orderId, tickerId, orderType, orderPrice) VALUES (?, ?, ?, ?, ?)";
        jt.update(sql, o.getId(), o.getOrderId(), o.getTickerId(), o.getorderType(), o.getOrderPrice());
    }
}
