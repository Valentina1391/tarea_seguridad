package com.ejemplo.seguridad.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WebController {

    @ModelAttribute("usuario")
    public String usuario(Authentication auth) {
        return auth == null ? null : auth.getName();
    }

    @GetMapping("/login")
    public String login() { return "login"; }

    @GetMapping({"/", "/inicio"})
    public String inicio() { return "inicio"; }

    @GetMapping("/admin/inicio")
    public String adminInicio() { return "admin-inicio"; }

    @GetMapping("/docente/inicio")
    public String docenteInicio() { return "docente-inicio"; }

    // Accesible por ADMIN y CREATOR
    @GetMapping("/new")
    public String nuevo() { return "new"; }

    // Ejercicio propio: promedio de notas (ADMIN y DOCENTE)
    @GetMapping("/promedio")
    public String promedioForm() { return "promedio"; }

    @PostMapping("/promedio")
    public String promedioCalcular(@RequestParam double n1,
                                   @RequestParam double n2,
                                   @RequestParam double n3,
                                   Model model) {
        double promedio = (n1 + n2 + n3) / 3;
        model.addAttribute("promedio", String.format("%.2f", promedio));
        model.addAttribute("aprobado", promedio >= 3.0);
        return "promedio";
    }

    @GetMapping("/403")
    public String error403() { return "403"; }
}
