package com.yako.catalogo.Repositories;

import com.yako.catalogo.Models.Articulo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticuloRepository extends JpaRepository<Articulo,String> {

    List<Articulo> findByCategoriaId(int categoria);
}
