package com.yakoadmin.yako.Service;

import com.yakoadmin.yako.Models.Articulo;
import com.yakoadmin.yako.Repository.ArticuloRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ArticuloService {
    @Autowired
    ArticuloRepository articuloRepository;

    public List<Articulo> getArticulos(){
        return articuloRepository.findAll();
    }

    public Optional<Articulo> getArticulo(String sku){
        return articuloRepository.findById(sku);
    }

    public Articulo saveOrUpdate(Articulo articuloModel){
        return articuloRepository.save(articuloModel);
    }

    public void delete(String sku){
        articuloRepository.deleteById(sku);
    }
}
