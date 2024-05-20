package com.titaniclift.titanicliftweb.controllers;

import com.titaniclift.titanicliftweb.model.Inscripcion;
import com.titaniclift.titanicliftweb.model.Usuarios;
import com.titaniclift.titanicliftweb.model.Horarios;
import com.titaniclift.titanicliftweb.repository.UserRepository;
import com.titaniclift.titanicliftweb.repository.inscripcionRepository;
import com.titaniclift.titanicliftweb.repository.horariosReposiroty;
import com.titaniclift.titanicliftweb.services.InscripcionRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.Optional;

@Controller
public class AuthController {

    @Autowired
    private final inscripcionRepository inscripcionRepository;


    @Autowired
    private UserRepository userRepository;

    public AuthController(com.titaniclift.titanicliftweb.repository.inscripcionRepository inscripcionRepository) {
        this.inscripcionRepository = inscripcionRepository;
    }


    @GetMapping("/register")
    public String showRegisterForm() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam String username, @RequestParam String password) {
        Usuarios usuarios = new Usuarios();
        usuarios.setUsername(username);
        usuarios.setPassword(password);
        userRepository.save(usuarios);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
        Optional<Usuarios> optionalUsuario = userRepository.findByUsername(username);
        if (optionalUsuario.isPresent() && optionalUsuario.get().getPassword().equals(password)) {
            session.setAttribute("username", username);
            System.out.println("Nombre de usuario guardado en sesión: " + username);
            // Agregar esta línea para verificar si el nombre de usuario se está guardando correctamente
            model.addAttribute("username", username);
            return "redirect:/clases"; // Redirigir al usuario a la página de inicio o dashboard
        } else {
            return "redirect:/login?error"; // Redirigir de nuevo a la página de inicio de sesión con un mensaje de error
        }
    }

    @PostMapping("/guardarInscripcion")
    public ResponseEntity<String> guardarInscripcion(@RequestBody Inscripcion inscripcion) {
        // Aquí puedes agregar validaciones u operaciones adicionales si es necesario
        inscripcionRepository.save(inscripcion);
        return ResponseEntity.ok("Inscripción completada exitosamente.");
    }
}
