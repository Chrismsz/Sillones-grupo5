package com.Grupo5.MCSSillones.controllers;

import com.Grupo5.MCSSillones.models.Sillon;
import com.Grupo5.MCSSillones.services.SillonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/Sillones")
public class SillonController {

    @Autowired
    @Qualifier("SillonService")
    private SillonService sillonService;

    @GetMapping("")
    public Iterable<Sillon> getSillones(){
        return sillonService.listAll();
    }

    @PostMapping("")
    public ResponseEntity<Sillon> addSillon(@RequestBody Sillon sillon){
        Sillon sill = sillonService.saveOrUpdateSillon(sillon);
        return new ResponseEntity<Sillon>(sill, HttpStatus.CREATED);
    }
    
}