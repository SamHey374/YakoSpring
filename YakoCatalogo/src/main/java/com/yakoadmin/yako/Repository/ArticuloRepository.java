package com.yakoadmin.yako.Repository;

import com.yakoadmin.yako.Models.Articulo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticuloRepository extends JpaRepository<Articulo, String> {

}
