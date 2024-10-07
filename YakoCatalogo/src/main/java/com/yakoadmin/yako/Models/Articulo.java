package com.yakoadmin.yako.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author shy37
 */
@Entity
@Getter
@Setter
@Table(name="articulo",schema="tarjetSchemaName")
public class Articulo {

    @Id
    @Column(name = "sku", unique = true, nullable = false)
    private String sku;

    @Column(name = "titulo", nullable = false)
    private String titulo;

    @Column(name = "descripcion")
    private String descripcion;

    @Column(name = "precio")
    private double precio;

    @Column(name = "campo")
    private int campo;

    @Column(name = "tipo_producto")
    private int tipoProducto;

    @Column(name = "descuento")
    private double descuento;
}
