package com.yako.catalogo.Repositories;

import com.yako.catalogo.Models.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria,String> {
}
