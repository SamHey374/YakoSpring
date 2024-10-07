package com.yakoadmin.yako.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "carrito", schema = "tarjetSchemaName")
public class Carrito {

    @Id
    @Column(name = "cliente_id", nullable = false)
    private String clienteId;

    @Column(name = "articulos",columnDefinition = "json")
    private String articulos;
}
