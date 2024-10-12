package com.yako.catalogo.Services;

import com.yako.catalogo.Models.Articulo;
import com.yako.catalogo.Repositories.ArticuloRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ArticuloService {

    @Autowired
    ArticuloRepository articuloRepository;

    public Optional<Articulo> getArticulo(String sku){
        return articuloRepository.findById(sku);
    }

    public List<Articulo> getArticulos(){
        return articuloRepository.findAll();
    }

    public List<Articulo> getArticulosPerCategoria(int categoria){
        return articuloRepository.findByCategoriaId(categoria);
    }
}
