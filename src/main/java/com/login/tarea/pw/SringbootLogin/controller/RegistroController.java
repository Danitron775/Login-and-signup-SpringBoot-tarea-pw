package com.login.tarea.pw.SringbootLogin.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.login.tarea.pw.SringbootLogin.model.Usuario;
import com.login.tarea.pw.SringbootLogin.service.UsuarioService;

@Controller
public class RegistroController {

	@Autowired
	private UsuarioService servicio;

	@GetMapping("/login")
	public String iniciarSesion() {
		return "login";
	}

	@GetMapping("/home")
	public String showIndex(Model model, Principal principal) {
		String username = principal.getName();
		Usuario usuario = servicio.findByUsername(username);
		model.addAttribute("usuario", usuario);
		return "index";
	}

}
