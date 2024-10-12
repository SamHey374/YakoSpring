package com.yako.catalogo.Services;

import com.yako.catalogo.Models.Categoria;
import com.yako.catalogo.Repositories.CategoriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaService {

    @Autowired
    CategoriaRepository categoriaRepository;

    public List<Categoria> getCategorias(){
        return categoriaRepository.findAll();
    }
}
