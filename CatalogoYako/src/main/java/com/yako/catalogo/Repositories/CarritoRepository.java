package com.yako.catalogo.Repositories;

import com.yako.catalogo.Models.Carrito;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CarritoRepository extends JpaRepository<Carrito,String> {

    @Query("SELECT c FROM Carrito c WHERE c.clienteId = :id")
    Carrito findByCliente(@Param("id")String user);
}
