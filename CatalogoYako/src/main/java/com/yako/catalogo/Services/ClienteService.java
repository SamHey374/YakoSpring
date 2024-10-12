package com.yako.catalogo.Services;

import com.yako.catalogo.Models.Cliente;
import com.yako.catalogo.Repositories.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteService {

    @Autowired
    ClienteRepository clienteRepository;

    Cliente clienteP = new Cliente();

    public List<Cliente> getClientes(){
        return clienteRepository.findAll();
    }

    public Optional<Cliente> getClientePerId(String userName){
        return clienteRepository.findById(userName);
    }

    public Cliente addCliente(Cliente cliente){
        if(clienteRepository.existsById(cliente.getUserName())){
            return clienteP;
        } else {
            return clienteRepository.save(cliente);
        }
    }

    public Cliente modifyCliente(Cliente cliente){
        if(clienteRepository.existsById(cliente.getUserName())){
            return clienteRepository.save(cliente);
        } else {
            return clienteP;
        }
    }

    public void dropCliente(String userName){
        clienteRepository.deleteById(userName);
    }
}
