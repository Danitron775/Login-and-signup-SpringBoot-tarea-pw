package com.login.tarea.pw.SringbootLogin.model;

import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "usuario")
@Data
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long usu_id;

	@Column(unique = true)
	private String username;

	private String usu_password;

	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "usuarios_roles", joinColumns = @JoinColumn(name = "usu_id", referencedColumnName = "usu_id"), inverseJoinColumns = @JoinColumn(name = "rol_id", referencedColumnName = "rol_id"))
	private Collection<Rol> roles;
	
	public Collection<Rol> getRoles() {
		return roles;
	}
	
	public Usuario(long usu_id, String username, String usu_password, Collection<Rol> roles) {
		super();
		this.usu_id = usu_id;
		this.username = username;
		this.usu_password = usu_password;
		this.roles = roles;
	}
	
	public Usuario(String username, String usu_password, Collection<Rol> roles) {
		super();
		this.username = username;
		this.usu_password = usu_password;
		this.roles = roles;
	}
	
	public Usuario() {
		
	}
	

}
