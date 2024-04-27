package com.login.tarea.pw.SringbootLogin.dto;

import lombok.Data;

@Data
public class UsuarioRegistroDTO {
	
	private String username;
	private String password;
	private String role;

	

	public UsuarioRegistroDTO(String username, String password, String role) {
		this.username = username;
		this.password = password;
		this.role = role;
	}

	public UsuarioRegistroDTO() {
		super();
	}
	
	

}
