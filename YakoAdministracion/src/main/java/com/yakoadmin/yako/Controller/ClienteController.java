package com.yakoadmin.yako.Controller;

import com.yakoadmin.yako.Models.Cliente;
import com.yakoadmin.yako.Service.ClienteService;
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
    public List<Cliente> getAll(){
        return clienteService.getClientes();
    }

    @GetMapping("/obtenerCliente")
    public Optional<Cliente> getOne(@RequestParam String userName){
        return clienteService.getCliente(userName);
    }

    @PostMapping("/agregarCliente")
    public  Cliente saveCliente(@RequestBody Cliente cliente){
        return clienteService.saveCliente(cliente);
    }

    @PutMapping("/modificarCliente")
    public Cliente modifyCliente(@RequestBody Cliente cliente){
        return clienteService.modifyCliente(cliente);
    }

    @DeleteMapping("/borrarCliente")
    public void deleteCliente(@RequestParam String userName){
        clienteService.deleteCliente(userName);
    }
}
