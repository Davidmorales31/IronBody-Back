package com.titaniclift.titanicliftweb.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.titaniclift.titanicliftweb.model.clases;
import com.titaniclift.titanicliftweb.repository.clasesRepository;


import java.util.List;

@RestController
@RequestMapping("/clases/api")
public class clasesController {
    @Autowired
    private clasesRepository clasesRepository;

    @GetMapping
    public List<clases> obtenerTodasLasClases() {
        return clasesRepository.findAll();
    }
}
