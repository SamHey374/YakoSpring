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
@Table(name = "tarjeta", schema = "tarjetSchemaName")
public class Tarjeta {

    @Id
    @Column(name = "numero", unique = true, nullable = false)
    private String numero;

    @Column(name = "mm", nullable = false)
    private int mm;

    @Column(name = "dd", nullable = false)
    private int dd;

    @Column(name = "cc", nullable = false)
    private String cc;

    @Column(name = "propietario", nullable = false)
    private String propietario;
}
