package com.login.tarea.pw.SringbootLogin.service;

import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.login.tarea.pw.SringbootLogin.dto.UsuarioRegistroDTO;
import com.login.tarea.pw.SringbootLogin.model.Usuario;

public interface UsuarioService extends UserDetailsService{

	public Usuario guardar(UsuarioRegistroDTO registroDTO) throws UsuarioExistenteException;
	
	public List<Usuario> listarUsuarios();
	
	Usuario findByUsername(String username);

    public List<Usuario> getAllUsuarios();
}
