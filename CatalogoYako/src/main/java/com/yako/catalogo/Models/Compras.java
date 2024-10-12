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
@Table(name = "compras", schema = "tarjetSchemaName")
public class Compras {

    @Id
    @Column(name = "folio_compra", unique = true,nullable = false)
    private String folioCompra;

    @Column(name = "cliente_id", nullable = false)
    private String clienteId;

    @Column(name = "fecha_pedido", nullable = false)
    private LocalDateTime fechaPedido;

    @Column(name = "total")
    private double total;

    @Column(name = "detalles")
    private String detalles;

    @Column(name = "estado")
    private int estado;
}
