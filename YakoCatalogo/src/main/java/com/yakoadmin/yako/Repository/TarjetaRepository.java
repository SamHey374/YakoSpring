package com.yakoadmin.yako.Repository;

import com.yakoadmin.yako.DTO.TarjetaDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface TarjetaRepository extends JpaRepository {

    @Query("SELECT new com.prueba.prueba.DTO.PlayStationDTO(u.noSerie, u.nombre) FROM PlayStation u")
    TarjetaDTO asignarTarjeta(String userName, String numero);
}
