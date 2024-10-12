package com.yako.catalogo.Repositories;

import com.yako.catalogo.Models.Compras;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ComprasRepository extends JpaRepository<Compras,String> {

    List<Compras> findByClienteId(String userName);
}
