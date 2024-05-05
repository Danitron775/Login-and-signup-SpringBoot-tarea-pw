package com.login.tarea.pw.SringbootLogin.repository;

import com.login.tarea.pw.SringbootLogin.model.Rol;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface RolRepository extends JpaRepository<Rol, Long> {
    @Query("SELECT r FROM Rol r WHERE r.rol_nombre = ?1")
    Rol findByName(String rolNombre);
}