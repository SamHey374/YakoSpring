package com.yakoadmin.yako.Repository;

import com.yakoadmin.yako.Models.Carrito;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CarritoRepository extends JpaRepository<Carrito,String> {

    @Query("SELECT c FROM Carrito c WHERE c.clienteId = :id")
    Carrito findByCliente(@Param("id")String user);

    //@Query("SELECT c FROM Carrito c WHERE JSON_CONTAINS(c.articulos, :sku, '$.articulos[*].sku')")
    //@Query(value = "SELECT * FROM Carrito c WHERE JSON_CONTAINS(c.articulos, :sku, '$.articulos[*].sku')", nativeQuery = true)
    //@Query(value = "SELECT * FROM carrito c WHERE JSON_CONTAINS_PATH(c.articulos, 'one', '$.articulos[*].sku') AND JSON_EXTRACT(c.articulos, '$.articulos[*].sku') = :sku", nativeQuery = true)
    //@Query(value = "SELECT * FROM carrito c WHERE JSON_UNQUOTE(JSON_EXTRACT(c.articulos, '$.articulos[*].sku')) = :sku", nativeQuery = true)
    //List<Carrito> findCarritosBySKU(@Param("sku") String sku);
    /*
    @Modifying
    @Query("UPDATE Carrito c SET c.articulos = JSON_OBJECT('articulos', JSON_ARRAY()) WHERE c.clienteId = :clienteId")
    void eliminarTodosLosArticulos(@Param("clienteId") String clienteId);
    */
}
