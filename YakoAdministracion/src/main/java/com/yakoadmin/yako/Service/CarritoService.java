package com.yakoadmin.yako.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.yakoadmin.yako.Models.Carrito;
import com.yakoadmin.yako.Repository.CarritoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CarritoService {

    @Autowired
    CarritoRepository carritoRepository;
    Carrito car;

    @Autowired
    private ObjectMapper objectMapper; //para convertir los articulos del json a objetos y viceversa

    public List<Carrito> getAll(){
        return carritoRepository.findAll();
    }

    public Carrito getCarritoPerCliente(String userName) {
        return carritoRepository.findByCliente(userName);
    }
    /*
    public List<Carrito> getCarritosPerSKU(String sku){
        return carritoRepository.findCarritosBySKU(sku);
    }
    */
    public Carrito addArticuloToCarrito(String userName, String sku, int cantidad) throws JsonProcessingException {
        Carrito carrito = carritoRepository.findByCliente(userName);
        System.out.println(carrito.getArticulos());
        if(carrito == null){
            carrito = new Carrito();
            carrito.setClienteId(userName);
            carrito.setArticulos("{\"articulos\":[]}");
        }
        //Arbol con los nodos(objetos JSON) de articulos en el carrito
        JsonNode articuloNodo = objectMapper.readTree(carrito.getArticulos());

        //nuevo nodo (articulo) para insertar en el arbol
        ObjectNode articuloNuevo = objectMapper.createObjectNode();
        articuloNuevo.put("sku",sku);//agregamos la llave sku con el valor de sku que traemos en el metodo
        articuloNuevo.put("cantidad",cantidad);//lo mismo con la cantidad

        ArrayNode articulos = (ArrayNode) articuloNodo.get("articulos");//hacemos un arreglo con los nodos

        articulos.add(articuloNuevo);//agregamos nuestro nuevo articulo al arreglo de nodos

        ((ObjectNode) articuloNodo).set("articulos", articulos);

        carrito.setArticulos(objectMapper.writeValueAsString(articuloNodo));//el arreglo lo guardamos como String

        return carritoRepository.save(carrito);
    }

    public Carrito modifyArticuloToCarrito(String userName, String sku, int cantidad) throws JsonProcessingException {
        Carrito carrito = carritoRepository.findByCliente(userName);
        if(carrito == null){
            carrito = new Carrito();
            carrito.setClienteId(userName);
            carrito.setArticulos("{\"articulos\":[]}");
        }
        //Arbol con los nodos(objetos JSON) de articulos en el carrito
        JsonNode articuloNodo = objectMapper.readTree(carrito.getArticulos());

        //nuevo nodo (articulo) para insertar en el arbol
        ObjectNode articuloNuevo = objectMapper.createObjectNode();
        articuloNuevo.put("sku",sku);//agregamos la llave sku con el valor de sku que traemos en el metodo
        articuloNuevo.put("cantidad",cantidad);//lo mismo con la cantidad

        ArrayNode articulos = (ArrayNode) articuloNodo.get("articulos");//hacemos un arreglo con los nodos
        ArrayNode updateArticulos = objectMapper.createArrayNode();

        articulos.forEach(articulo -> {
            if(!articulo.get("sku").asText().equals(sku)){
                updateArticulos.add(articulo);
            }else{
                updateArticulos.add(articuloNuevo);
            }
        });
        ((ObjectNode) articuloNodo).set("articulos",updateArticulos);

        carrito.setArticulos(objectMapper.writeValueAsString(articuloNodo));//el arreglo lo guardamos como String
        return carritoRepository.save(carrito);
    }

    public void deleteArticuloFromCarrito(String userName, String sku) throws JsonProcessingException {
        Carrito carrito = carritoRepository.findByCliente(userName);
        if(carrito == null){
            throw new RuntimeException("Carrito no encontrado");
        }
        JsonNode articuloNodo = objectMapper.readTree(carrito.getArticulos());
        System.out.println(articuloNodo);
        ArrayNode articulos = (ArrayNode) articuloNodo.get("articulos");
        System.out.println(articulos);

        ArrayNode updateArticulos = objectMapper.createArrayNode();

        articulos.forEach(articulo -> {
            if(!articulo.get("sku").asText().equals(sku)){
                updateArticulos.add(articulo);
            }
        });

        ((ObjectNode) articuloNodo).set("articulos",updateArticulos);
        carrito.setArticulos(objectMapper.writeValueAsString(articuloNodo));

        carritoRepository.save(carrito);
    }
    /*
    public void deleteAllArticulosFromCarrito(String userName){
        carritoRepository.eliminarTodosLosArticulos(userName);
    }
    */
}
