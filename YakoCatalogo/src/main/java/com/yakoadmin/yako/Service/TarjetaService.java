package com.yakoadmin.yako.Service;

import com.yakoadmin.yako.Models.Tarjeta;
import com.yakoadmin.yako.Repository.TarjetaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TarjetaService {

    @Autowired
    TarjetaRepository tarjetaRepository;

    public Tarjeta addTarjeta(String numero){
        if(tarjetaRepository.existsById(numero)){
            return null;
        }else{
            return null;
        }
    }
}
