package com.example.SharkAquarium.service;

import java.util.List;

import com.example.SharkAquarium.dao.PitchDAO;
import com.example.SharkAquarium.model.pitch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PitchService {
    
    @Autowired
    private PitchDAO pitchDAO;

    public void createPitch(pitch p, String username) {
        pitchDAO.createPitch(p, username);
    } 

    public boolean hasAnyPitch(String username) {
        return pitchDAO.hasAnyPitch(username);
    }

    public void deletePitch(int id) {
        pitchDAO.deletePitch(id);
    }

    public void updatePitch(pitch p, int id) {
        pitchDAO.updatePitch(p, id);
    }

    public pitch getPitch(int id) {
        return pitchDAO.getPitch(id);
    }
  
    public List<pitch> getAllPitches() {
        return pitchDAO.getAllPitches();
    } 
 
    public List<pitch> getAllPitches(String username) {
        return pitchDAO.getAllPitches(username);
    }
}
