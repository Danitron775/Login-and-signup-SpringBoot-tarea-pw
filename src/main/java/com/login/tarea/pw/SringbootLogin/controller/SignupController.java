
package com.login.tarea.pw.SringbootLogin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.login.tarea.pw.SringbootLogin.dto.UsuarioRegistroDTO;
import com.login.tarea.pw.SringbootLogin.service.UsuarioExistenteException;
import com.login.tarea.pw.SringbootLogin.service.UsuarioService;

@Controller
@RequestMapping("/signup")
public class SignupController {

	private UsuarioService usuarioServicio;

	public SignupController(UsuarioService usuarioServicio) {
		super();
		this.usuarioServicio = usuarioServicio;
	}

	@ModelAttribute("username")
	public UsuarioRegistroDTO retornarNuevoUsuarioRegistroDTO() {
		return new UsuarioRegistroDTO();
	}

	@GetMapping
	public String mostrarFormularioDeRegistro() {
		return "signup";
	}

	@PostMapping
public String registrarNuevoUsuario(@ModelAttribute("username") UsuarioRegistroDTO usuarioRegistroDTO,
        Model model) {
    try {
        usuarioServicio.guardar(usuarioRegistroDTO);
        model.addAttribute("successMessage", "El usuario se creó correctamente");
    } catch (UsuarioExistenteException e) {
        model.addAttribute("errorMessage", e.getMessage());
        model.addAttribute("usuario", usuarioRegistroDTO);
    } catch (Exception e) {
        System.out.println("Error al registrar el usuario: " + e.getMessage());
        model.addAttribute("errorMessage", "Error al registrar el usuario");
    }
    return "signup";
}
}
