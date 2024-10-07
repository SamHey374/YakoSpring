package com.yakoadmin.yako.Models;

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
@Table(name = "compras", schema = "tarjetSchemaName")
public class Compras {

    @Id
    @Column(name = "cliente_id", unique = true, nullable = false)
    private String clienteId;

    @Column(name = "articulos")
    private String articulos;

    @Column(name = "fecha_hora")
    private LocalDateTime fechaHora;

    @Column(name = "estado")
    private int estado;
}
