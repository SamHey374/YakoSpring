package com.yako.catalogo.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "articulos", schema = "tarjetSchemaName")
public class Articulo {

    @Id
    @Column(name = "sku", unique = true, nullable = false)
    private String sku;

    @Column(name = "titulo", nullable = false)
    private String titulo;

    @Column(name = "descripcion")
    private String descripcion;

    @Column(name = "precio", nullable = false)
    private double precio;

    @Column(name = "stock")
    private int stock;

    @Column(name = "categoria_id")
    private int categoriaId;

    @Column(name = "descuento")
    private double descuento;
}
