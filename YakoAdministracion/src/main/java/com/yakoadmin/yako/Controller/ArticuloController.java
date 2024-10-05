package com.yakoadmin.yako.Controller;

import com.yakoadmin.yako.Models.Articulo;
import com.yakoadmin.yako.Service.ArticuloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController()
@RequestMapping("/articulos")
public class ArticuloController {

    @Autowired
    private ArticuloService articuloService;

    @GetMapping("/obtenerArticulos")
    public List<Articulo> getAll(){
        return articuloService.getArticulos();
    }

    @GetMapping("obtenerArticuloPorSKU")
    public Optional<Articulo> getOne(@RequestParam String sku){
        return articuloService.getArticulo(sku);
    }


    @PostMapping("/registrarActualizarArticulo")
    public Articulo addArticulo(@RequestBody Articulo articuloModel){
        return articuloService.saveOrUpdate(articuloModel);
    }

    @DeleteMapping("/borrarArticulo")
    public void deleteArticulo(@RequestParam String sku){
        articuloService.delete(sku);
    }


}
