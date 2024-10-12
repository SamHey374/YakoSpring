package com.yako.catalogo.Controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.yako.catalogo.Models.Carrito;
import com.yako.catalogo.Services.CarritoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/carrito")
public class CarritoController {

    @Autowired
    private CarritoService carritoService;

    @GetMapping("/carritoDelUsuario")
    public Optional<Carrito> getCarritoOfUser(@RequestParam String userName){
        return carritoService.getCarritoPerUser(userName);
    }

    @PostMapping("/agregarArticulo")
    public Carrito addArticuloToCarrito(@RequestParam String userName, @RequestParam String sku, @RequestParam int cantidad) throws JsonProcessingException {
        return carritoService.addArticuloToCarrito(userName, sku, cantidad);
    }

    @PutMapping("/modificarArticulo")
    public Carrito modifyArticuloOfCarrito(@RequestParam String userName, @RequestParam String sku, @RequestParam int cantidad) throws JsonProcessingException {
        return carritoService.modifyArticuloToCarrito(userName, sku, cantidad);
    }

    @DeleteMapping("/eliminarArticulo")
    public void deleteArticulo(@RequestParam String userName, @RequestParam String sku) throws JsonProcessingException {
        carritoService.deleteArticuloFromCarrito(userName, sku);
    }

    @DeleteMapping("/eliminarCarrito")
    public void dropCarrito(@RequestParam String userName){
        carritoService.dropCarrito(userName);
    }
}
