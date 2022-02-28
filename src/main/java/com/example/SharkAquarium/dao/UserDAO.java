package com.example.SharkAquarium.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.SharkAquarium.model.user;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.dao.EmptyResultDataAccessException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Repository
public class UserDAO {

    @Autowired
    private JdbcTemplate jt;
    @Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

    public String getRole(String username) {
		String sql = "SELECT role FROM user WHERE username = ?";
        return jt.queryForObject(sql, (rs, i)->{return rs.getString("role");}, username);
	}

    public void save(user user) {
		// user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		String sql="insert into user(username,password,role) values (?,?,?)";
		jt.update(sql,user.getUsername(),user.getPassword(),user.getRole());	
	}

    public user findByUsername(String username) {
        String sql = "select * from user where username='" + username + "'";        
        try{        	
        	return jt.queryForObject(sql, new RowMapper<user>() {
                public user mapRow(ResultSet row, int rowNum) throws SQLException {                	
                	user user = (new BeanPropertyRowMapper<>(user.class)).mapRow(row,rowNum);    
                    return user;
                }
            });        
        } catch(EmptyResultDataAccessException e) {
        	return null;
        }         
    }
    
}
