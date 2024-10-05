CREATE DATABASE Yako;
USE Yako;

/*
	TABLAS PARA LOS CLIENTES
*/

CREATE TABLE cliente (
	user_name VARCHAR(20) PRIMARY KEY,
    contrasena TEXT,
    email VARCHAR(60),
    nombres VARCHAR(50),
    apellido_p VARCHAR(25),
    apellido_m VARCHAR(25),
    fecha_creacion DATETIME,
    estado INT/*,
    foto MEDIUMBLOB*/
);

CREATE TABLE tarjeta (
	numero VARCHAR(16) PRIMARY KEY,
    mm INT,
    dd INT,
    ccc INT,
    propietario VARCHAR(150)
);

CREATE TABLE clienteTarjeta(
	cliente_id VARCHAR(20),
    num_tarjeta VARCHAR(16)
);

ALTER TABLE clienteTarjeta ADD FOREIGN KEY (cliente_id) REFERENCES  cliente (user_name);
ALTER TABLE clienteTarjeta ADD FOREIGN KEY (num_tarjeta) REFERENCES  tarjeta (numero);


/*
	TABLAS PARA LA INTERACCION DEL CLIENTE CON LA TIENDA
*/

CREATE TABLE campos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    servicio VARCHAR(50)
);

CREATE TABLE tiposProductos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_producto VARCHAR(100)
);

CREATE TABLE articulo (
	sku VARCHAR (50) PRIMARY KEY,
    titulo VARCHAR (200),
    descripcion TEXT,
    precio DOUBLE,
    campo INT,
    tipo_producto INT,
    descuento DOUBLE
);

ALTER TABLE articulo ADD FOREIGN KEY (campo) REFERENCES campos (id);
ALTER TABLE articulo ADD FOREIGN KEY (tipo_producto) REFERENCES tiposProductos (id);

CREATE TABLE carrito (
    cliente_id VARCHAR(20) PRIMARY KEY,
    articulos JSON
);

ALTER TABLE carrito ADD FOREIGN KEY (cliente_id) REFERENCES cliente (user_name);

CREATE TABLE compras (
	cliente_id VARCHAR(20) PRIMARY KEY,
    articulos JSON,
    fecha_hora DATETIME,
    estado INT
);

ALTER TABLE compras ADD FOREIGN KEY (cliente_id) REFERENCES cliente (user_name);

CREATE TABLE estadosCompras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(50)
);

ALTER TABLE compras ADD FOREIGN KEY (estado) REFERENCES estadosCompras (id);


/*
	TABLAS DE LOS TRABAJADORES
*/

CREATE TABLE empleado (
	user_name VARCHAR(20) PRIMARY KEY,
    pssw TEXT,
    email VARCHAR(60),
    nombres VARCHAR(50),
    apellido_p VARCHAR(25),
    apellido_m VARCHAR(25),
    fecha_creacion DATETIME,
    estado INT
);

CREATE TABLE roles (
	id_role INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(30)
);

CREATE TABLE userRole (
	user_name VARCHAR(20),
    id_rol INT
);

ALTER TABLE userRole ADD FOREIGN KEY (user_name) REFERENCES empleado (user_name);
ALTER TABLE userRole ADD FOREIGN KEY (id_rol) REFERENCES roles (id_role);


/*
	INSERCIÓN DE DATOS
*/


INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('hey.sam','1234567','hey.sam.2024@gmail.com','Samuel Oswaldo','Herrera','Yañez','2024-09-30 16:19:03',1);
INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('ria.ger','1234567','ria.ger.2024@gmail.com','Gerardo','Rivera','Axomulco','2024-09-30 16:24:09',1);
INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coa.mig','1234567','coa.mig.2024@gmail.com','Miguel Angel','Corrales','Alonso','2024-09-30 16:20:45',1);
INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('hey.jas','1234567','hey.jas.2024@gmail.com','Jassiel Jaime','Herrera','Yañez','2024-10-01 16:24:09',1);
INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coy.ang','1234567','coy.ang.2211@gmail.com','Angel Hisam','Corrales','Yañez','2024-10-01 16:26:35',1);
INSERT INTO empleado (user_name,pssw,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coy.mau','1234567','coy.mau.2024@gmail.com','Mauricio Naim','Corrales','Yañez','2024-10-01 16:27:21',1);

INSERT INTO roles (role_name) VALUES ('Superadministrador');
INSERT INTO roles (role_name) VALUES ('Administrador');
INSERT INTO roles (role_name) VALUES ('Gestor');
INSERT INTO roles (role_name) VALUES ('Editor');

INSERT INTO userRole(user_name, id_rol) VALUES ('hey.sam',1);
INSERT INTO userRole(user_name, id_rol) VALUES ('ria.ger',1);
INSERT INTO userRole(user_name, id_rol) VALUES ('coa.mig',2);
INSERT INTO userRole(user_name, id_rol) VALUES ('hey.jas',3);
INSERT INTO userRole(user_name, id_rol) VALUES ('coy.ang',4);
INSERT INTO userRole(user_name, id_rol) VALUES ('coy.mau',4);

INSERT INTO campos(servicio) VALUES ('Artesania'); -- 1
INSERT INTO campos(servicio) VALUES ('Ropa'); -- 2
INSERT INTO campos(servicio) VALUES ('Utiles'); -- 3
INSERT INTO campos(servicio) VALUES ('Veterinaria'); -- 4
INSERT INTO campos(servicio) VALUES ('Computacion'); -- 5

INSERT INTO tiposProductos(tipo_producto) VALUES ('Taza'); -- 1
INSERT INTO tiposProductos(tipo_producto) VALUES ('Decoracion'); -- 2
INSERT INTO tiposProductos(tipo_producto) VALUES ('Ropa interior'); -- 3
INSERT INTO tiposProductos(tipo_producto) VALUES ('Vestido'); -- 4
INSERT INTO tiposProductos(tipo_producto) VALUES ('Medicina'); -- 5
INSERT INTO tiposProductos(tipo_producto) VALUES ('Juguete'); -- 6
INSERT INTO tiposProductos(tipo_producto) VALUES ('Utilidad para mascota'); -- 7
INSERT INTO tiposProductos(tipo_producto) VALUES ('Mantenimiento de computadoras'); -- 8


INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YART0001L0001','Taza de café','Descripción génerica de una taza para café',119.99,1,1,0.80);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YART0002L0001','Taza de té','Descripción génerica de una taza para té',99.99,1,1,0.95);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YART0003L0001','Tazón','Descripción génerica de un tazón',139.99,1,1,0.97);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YROP0001L0001','Camisón de seda','Descripción génerica de un camisón',189.99,2,4,0.0);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YROP0002L0001','Vestido verde para eventos','Descripción génerica de un vestido para eventos',229.99,2,4,0.96);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YVET0001L0001','Vacunas 3 en 1','Vacuna contra la rabia, el moquillo y la sarna',449.99,4,5,0.0);
INSERT INTO articulo(sku,titulo,descripcion,precio,campo,tipo_producto,descuento) 
	VALUES ('YCOM0001L0001','Limpieza de equipo de computo','Limpieza de su equipo de computo personal',149.99,5,8,0.0);
    
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('hey.sam.2024','1234567','hey.sam.2024@gmail.com','Samuel Oswaldo','Herrera','Yañez','2024-09-30 16:19:03',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('ria.ger.2024','1234567','ria.ger.2024@gmail.com','Gerardo','Rivera','Axomulco','2024-09-30 16:24:09',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coa.mig.2024','1234567','coa.mig.2024@gmail.com','Miguel Angel','Corrales','Alonso','2024-09-30 16:20:45',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('hey.jas.2024','1234567','hey.jas.2024@gmail.com','Jassiel Jaime','Herrera','Yañez','2024-10-01 16:24:09',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coy.ang.2024','1234567','coy.ang.2211@gmail.com','Angel Hisam','Corrales','Yañez','2024-10-01 16:26:35',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('coy.mau.2024','1234567','coy.mau.2024@gmail.com','Mauricio Naim','Corrales','Yañez','2024-10-01 16:27:21',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('sar.ing.2024','1234567','sar.ing.2024@gmail.com','Ingrid Yanet','Salgado','Rivas','2024-10-01 16:27:21',1);
INSERT INTO cliente (user_name,contrasena,email,nombres,apellido_p,apellido_m,fecha_creacion,estado)
	VALUES ('nig.ger.2024','1234567','nig.ger.2024@gmail.com','German','Nieto','Galvez','2024-10-01 16:27:21',1);
    

INSERT INTO carrito (cliente_id, articulos) VALUES('ria.ger.2024','{"articulos":[{"sku":"YART0003L0001","cantidad":1},{"sku":"YVET0001L0001","cantidad":4},{"sku":"YART0001L0001","cantidad":1},{"sku":"YCOM0001L0001","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos) VALUES('hey.sam.2024','{"articulos":[{"sku":"YART0001L0001","cantidad":1},{"sku":"YART0002L0001","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos) VALUES('hey.jas.2024','{"articulos":[{"sku":"YART0003L0001","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos) VALUES('coy.ang.2024','{"articulos":[{"sku":"YROP0001L0001","cantidad":2},{"sku":"YROP0002L0001","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos) VALUES('coy.mau.2024','{"articulos":[{"sku":"YCOM0001L0001","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos) VALUES('coa.mig.2024','{"articulos":[{"sku":"YART0001L0001","cantidad":3}]}');