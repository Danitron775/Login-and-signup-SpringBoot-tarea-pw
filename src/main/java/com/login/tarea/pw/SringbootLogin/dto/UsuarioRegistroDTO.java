package com.login.tarea.pw.SringbootLogin.dto;

import lombok.Data;

@Data
public class UsuarioRegistroDTO {
    
    private String username;
    private String password;

    public UsuarioRegistroDTO(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public UsuarioRegistroDTO() {
        super();
    }
}