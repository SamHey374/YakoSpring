package com.yakoadmin.yako.Controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.yakoadmin.yako.Models.Carrito;
import com.yakoadmin.yako.Service.CarritoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/carrito")
public class CarritoController {

    @Autowired
    private CarritoService carritoService;

    @GetMapping("/obtenerCarritos")
    public List<Carrito> getCarritos(){
        return carritoService.getAll();
    }

    @GetMapping("/obtenerCarritoPorCliente")
    public Carrito getCarritoPerCliente(@RequestParam String userName){
        return carritoService.getCarritoPerCliente(userName);
    }
/*
    @GetMapping("/obtenerCarritosPorSKU")
    public List<Carrito> getCarritoPerSKU(@RequestParam String sku){
        return carritoService.getCarritosPerSKU(sku);
    }
*/
    @PostMapping("/agregarProductoAlCarrito")
    public Carrito addArticulo(@RequestParam String userName, @RequestParam String sku, @RequestParam int cantidad) throws JsonProcessingException {
        return carritoService.addArticuloToCarrito(userName, sku, cantidad);
    }

    @PutMapping("/modificarArticuloDelCarrito")
    public Carrito modifyArticulo(@RequestParam String userName, @RequestParam String sku, @RequestParam int cantidad) throws JsonProcessingException {
        return carritoService.modifyArticuloToCarrito(userName,sku,cantidad);
    }

    @DeleteMapping("/borrarArticuloDelCarrito")
    public void deleteArticulo(@RequestParam String userName, @RequestParam String sku) throws JsonProcessingException {
        carritoService.deleteArticuloFromCarrito(userName,sku);
    }
}
