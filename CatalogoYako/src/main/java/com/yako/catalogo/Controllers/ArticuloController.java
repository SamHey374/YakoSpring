package com.yako.catalogo.Controllers;

import com.yako.catalogo.Models.Articulo;
import com.yako.catalogo.Services.ArticuloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/articulos")
public class ArticuloController {
    @Autowired
    private ArticuloService articuloService;

    @GetMapping("/consultarArticulos")
    public List<Articulo> getArticulos(){
        return articuloService.getArticulos();
    }

    @GetMapping("/consultarArticulo")
    public Optional<Articulo> getArticulo(@RequestParam String sku){
        return articuloService.getArticulo(sku);
    }

    @GetMapping("/consultarPorCategoria")
    public List<Articulo> getArticulosPerCategoria(@RequestParam int categoria){
        return articuloService.getArticulosPerCategoria(categoria);
    }
}
