package com.Grupo5.MCSSillones.controllers;

import com.Grupo5.MCSSillones.models.Sillon;
import com.Grupo5.MCSSillones.services.SillonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@CrossOrigin(origins = "*")
@RequestMapping("/api/")
public class SillonController {

    @Autowired
    @Qualifier("SillonService")
    private SillonService sillonService;

    
    @GetMapping("Sillones")
    public String getSillones(Model model){
        model.addAttribute("sillones", sillonService.listAll());
		return "Sillones";
    }
    
    @GetMapping("NewSillon")
    public String ShowSillonForm(Model model){
    	Sillon unsillon = new Sillon();
    	model.addAttribute("sillon",unsillon);
		return "NewSillon";
    }
    
    @PostMapping("SaveSillon")
    public String SaveSillon(@ModelAttribute("sillon") Sillon unsillon){
    	sillonService.saveOrUpdateSillon(unsillon);
		return "redirect:Sillones";
    }
    
    @GetMapping("DeleteSillon")
    public String ShowSillonForm2(Model model){
    	model.addAttribute("sillones", sillonService.listAll());
		return "DeleteSillon";
    }
    
    @GetMapping("pallobby")
    public String DeleteSillon(@RequestParam("sillonId") int theId){
    	sillonService.delete(theId);
		return "redirect:Sillones";
    }
    
    @GetMapping("FilterSillon")
    public String FilterSillon(){
		return "FilterSillon";
    }
    
    @GetMapping("FilterByIdSillon")
    public String FilterByIdSillon(){
		return "FilterById";
    }
    
    @GetMapping("Search/{id}")
    public String SearchById(@PathVariable("id") int id, Model model) {
    	model.addAttribute("sillones", sillonService.findSillonById(id));
		return "FilterById";
    }
    
    @GetMapping("SearchbyState/{estado}")
    public String SearchByEstado(@PathVariable("estado") boolean estado, Model model) {
    	model.addAttribute("sillones", sillonService.findSillonByState(estado));
		return "FilterByEstado";
    }
    
    /*
    @PostMapping("Sillones")
    public ResponseEntity<Sillon> addSillon(@RequestBody Sillon sillon){
        Sillon sill = sillonService.saveOrUpdateSillon(sillon);
        return new ResponseEntity<Sillon>(sill, HttpStatus.CREATED);
    }
    */
   
    
}