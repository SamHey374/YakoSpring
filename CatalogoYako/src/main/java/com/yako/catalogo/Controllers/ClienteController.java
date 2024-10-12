package com.yako.catalogo.Controllers;

import com.yako.catalogo.Models.Cliente;
import com.yako.catalogo.Services.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/clientes")
public class ClienteController {

    @Autowired
    private ClienteService clienteService;

    @GetMapping("/obtenerClientes")
    public List<Cliente> getClientes(){
        return clienteService.getClientes();
    }

    @GetMapping("/obtenerCliente")
    public Optional<Cliente> getCliente(@RequestParam String userName){
        return clienteService.getClientePerId(userName);
    }

    @PostMapping("/registrarCliente")
    public Cliente registerCliente(@RequestBody Cliente cliente){
        return clienteService.addCliente(cliente);
    }

    @PutMapping("/modificarCliente")
    public Cliente modifyCliente(@RequestBody Cliente cliente){
        return clienteService.modifyCliente(cliente);
    }

    @DeleteMapping("/borrarCliente")
    public void deleteCliente(@RequestParam String userName){
        clienteService.dropCliente(userName);
    }
}
