package com.yako.catalogo.Controllers;

import com.yako.catalogo.Models.Compras;
import com.yako.catalogo.Services.ComprasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/compras")
public class ComprasController {

    @Autowired
    private ComprasService comprasService;

    @GetMapping("/misCompras")
    public List<Compras> getCompras(@RequestParam String userName){
        return comprasService.getComprasOfCliente(userName);
    }

    @GetMapping("/miCompra")
    public Optional<Compras> getCompra(@RequestParam String folio){
        return comprasService.getCompra(folio);
    }
}
