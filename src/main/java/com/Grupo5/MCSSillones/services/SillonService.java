package com.Grupo5.MCSSillones.services;

import com.Grupo5.MCSSillones.daos.SillonRepository;
import com.Grupo5.MCSSillones.models.Sillon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("SillonService")
public class SillonService {
    @Autowired
    private SillonRepository sillonRepository;

    public Sillon saveOrUpdateSillon(Sillon sillon){
        return sillonRepository.save(sillon);
    }

    public Sillon findSillonById(Integer id){
        return sillonRepository.findById(id).orElse(null);
    }

    public Iterable<Sillon> listAll(){
        return sillonRepository.findAll();
    }

    public Iterable<Sillon> findSillonByState(boolean estado){
        return sillonRepository.findByEstado(estado);
    }

    public void delete(Integer id){
        sillonRepository.deleteById(id);
    }
}