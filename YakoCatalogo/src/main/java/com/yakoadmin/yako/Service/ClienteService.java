package com.yakoadmin.yako.Service;

import com.yakoadmin.yako.Models.Cliente;
import com.yakoadmin.yako.Repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteService {

    @Autowired
    ClienteRepository clienteRepository;
    Cliente clnt = new Cliente();

    public List<Cliente> getClientes(){
        return clienteRepository.findAll();
    }

    public Optional<Cliente> getCliente(String username){
        return clienteRepository.findById(username);
    }

    public Cliente saveCliente(Cliente cliente){
        if(clienteRepository.existsById(cliente.getUserName())){
            return clnt;
        }else{
            return clienteRepository.save(cliente);
        }
    }

    public Cliente modifyCliente(Cliente cliente){
        if(clienteRepository.existsById(cliente.getUserName())){
            return clienteRepository.save(cliente);
        }else{
            return clnt;
        }
    }

    public void deleteCliente(String userName){
        clienteRepository.deleteById(userName);
    }
}
