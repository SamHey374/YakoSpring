package com.yakoadmin.yako.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.websocket.server.ServerEndpoint;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "cliente", schema = "tarjetSchemeName")
public class Cliente {

    @Id
    @Column(name = "user_name", unique = true, nullable = false)
    private String userName;

    @Column(name = "contrasena", nullable = false)
    private String pssw;

    @Column(name = "email", unique = true, nullable = false)
    private String email;

    @Column(name = "nombres")
    private String nombres;

    @Column(name = "apellido_p")
    private String apellidoP;

    @Column(name = "apellido_m")
    private String apellidoM;

    @Column(name = "fecha_creacion")
    private LocalDateTime fechaCreacion;

    @Column(name = "estado")
    private int estado;
}
