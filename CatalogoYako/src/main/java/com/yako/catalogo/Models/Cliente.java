package com.yako.catalogo.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "clientes", schema = "tarjetSchemaName")
public class Cliente {

    @Id
    @Column(name = "user_name", unique = true, nullable = false)
    private String userName;

    @Column(name = "contrasena", nullable = false)
    private String password;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "nombres")
    private String nombres;

    @Column(name = "ap_pat")
    private String apellidoP;

    @Column(name = "ap_mat")
    private String apellidoM;

    @Column(name = "fecha_creacion")
    private LocalDateTime fechaCreacion;

    @Column(name = "estado")
    private int estado;
}
