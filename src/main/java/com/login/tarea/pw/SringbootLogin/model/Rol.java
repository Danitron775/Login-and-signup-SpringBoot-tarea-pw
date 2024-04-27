package com.login.tarea.pw.SringbootLogin.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Table(name = "rol")
@Data
public class Rol {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    private Long rol_id;

	String rol_nombre;

	@OneToMany(mappedBy = "rol")
	private List<Rol> rol;

	public Rol(Long rol_id, String rol_nombre) {
		super();
		this.rol_id = rol_id;
		this.rol_nombre = rol_nombre;
	}

	public Rol(String rol_nombre) {
		super();
		this.rol_nombre = rol_nombre;
	}

	public Rol() {

	}

}
