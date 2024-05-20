package com.titaniclift.titanicliftweb.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping
public class headerController {


    @GetMapping("/inicio")
    public String Index() {

        return "index";

    }

    @GetMapping("/tienda")
    public String Tienda() {

        return "tienda";

    }

    @GetMapping("/clases")
    public String clases(HttpSession session, Model model) {
        String username = (String) session.getAttribute("username");
        if (username != null) {
            model.addAttribute("username", username);
            System.out.println("La session recibida es "+ username);
            return "clases"; // Asegúrate de que esto coincida con el nombre de tu archivo JSP (sin la extensión .jsp)
        } else {
            return "redirect:/login"; // Redirige al login si no hay sesión
        }
    }

    @GetMapping("/sobre_nosotros")
    public String Sobre_nosotros() {

        return "sobre_nosotros";

    }

    @GetMapping("/contacto")
    public String Contacto() {

        return "contacto";

    }


}
