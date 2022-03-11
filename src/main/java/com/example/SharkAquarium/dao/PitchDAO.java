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
            p.setDescription(rs.getString("description"));
            p.setAmount(rs.getDouble("amount"));
            return p;
        }
    };

    public void createPitch(pitch p, String username) { 
        String sql = "INSERT INTO pitch (id, userName, description, amount ) VALUES (?, ?, ?, ? )";
        jt.update(sql, p.getId(), username, p.getDescription(), p.getAmount());
    }

    public boolean hasAnyPitch(String username) {

        String sql = "SELECT count(*) FROM pitch WHERE username = ?";
        int cnt = jt.queryForObject(sql, Integer.class, username);
        return cnt > 0;
    }

    public void updatePitch(pitch p, int id) {
        System.out.println(id+""); 
        String sql = "UPDATE pitch SET description=?, amount=?  where id = ?";

        jt.update(sql, p.getDescription(), p.getAmount(), id);
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

