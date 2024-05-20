package com.titaniclift.titanicliftweb.controllers;

import com.titaniclift.titanicliftweb.model.Horarios;
import com.titaniclift.titanicliftweb.model.clases;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.titaniclift.titanicliftweb.repository.horariosReposiroty;
import java.util.List;

@RestController
@RequestMapping("/horarios/api")
public class horariosController {
    @Autowired
    private horariosReposiroty horariosReposiroty;

    @GetMapping
    public List<Horarios> obtenerTodosLosHorarios() {
        return horariosReposiroty.findAll();
    }
}
