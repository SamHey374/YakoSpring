package com.yako.catalogo.Services;

import com.yako.catalogo.Models.Compras;
import com.yako.catalogo.Repositories.ComprasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ComprasService {

    @Autowired
    ComprasRepository comprasRepository;

    public List<Compras> getComprasOfCliente(String userName){
        return comprasRepository.findByClienteId(userName);
    }

    public Optional<Compras> getCompra(String folio){
        return comprasRepository.findById(folio);
    }

}
