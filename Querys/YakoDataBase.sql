CREATE DATABASE Yako;
USE Yako;


CREATE TABLE categorias(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion VARCHAR(500)
);

CREATE TABLE articulos(
	sku VARCHAR(50) PRIMARY KEY,
    titulo VARCHAR(150),
    descripcion VARCHAR(800),
    precio DOUBLE,
    stock INT,
    categoria_id INT,
    descuento DOUBLE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE clientes (
	user_name VARCHAR(50) PRIMARY KEY,
    contrasena VARCHAR(255),
    email VARCHAR(60),
    nombres VARCHAR(50),
    ap_pat VARCHAR(30),
    ap_mat VARCHAR(30),
    fecha_creacion DATETIME,
    estado INT
);

CREATE TABLE carrito (
	cliente_id VARCHAR(50) PRIMARY KEY,
    articulos JSON,
    FOREIGN KEY (cliente_id) REFERENCES clientes(user_name)
);

CREATE TABLE estados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(50)
);

CREATE TABLE compras (
	folio_compra VARCHAR(50) PRIMARY KEY,
    cliente_id VARCHAR(50),
    fecha_pedido DATETIME,
    total DOUBLE,
    detalles JSON,
    estado INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(user_name),
    FOREIGN KEY (estado) REFERENCES estados(id)
);

CREATE TABLE mensajes (
	folio_compra VARCHAR(50) PRIMARY KEY,
    mensajes JSON,
    FOREIGN KEY (folio_compra) REFERENCES compras(folio_compra)
);

CREATE TABLE tarjetas (
	numero VARCHAR(500) PRIMARY KEY,
    mm VARCHAR(50),
    aa VARCHAR(50),
    ccc VARCHAR(50),
    propietario VARCHAR(170)
);

CREATE TABLE clientetarjeta (
	user_name VARCHAR(50),
    number_card VARCHAR(500),
    FOREIGN KEY (user_name) REFERENCES clientes(user_name),
    FOREIGN KEY (number_card) REFERENCES tarjetas(numero)
);
