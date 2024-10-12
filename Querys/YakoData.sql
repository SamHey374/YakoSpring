/*
	ESTAS SON LAS CATEGORIAS EXISTENTES HASTA EL MOMENTO, EL ID ESTÁ EN AUTO INCREMENT,
    POR LO QUE CUANDO SE HACE UNA INSERCIÓN NO ES NECESARIO ASIGNAR UN NÚMERO COMO ID,
    SE INCREMENTA POR INSERCIÓN
*/
INSERT INTO categorias(nombre, descripcion) VALUES ('Ceramica','Articulos artesanales locales y foraneos hechos de ceramica'); -- id 1
INSERT INTO categorias(nombre, descripcion) VALUES ('Decoracion','Articulos decorativos para el entorno'); -- id 2
INSERT INTO categorias(nombre, descripcion) VALUES ('Vestimenta','Atuendos de gala y casuales para damas y caballeros'); -- id 3
INSERT INTO categorias(nombre, descripcion) VALUES ('Interior','Prendas interiores para damas y caballeros'); -- id 4
INSERT INTO categorias(nombre, descripcion) VALUES ('Infantil','Prendas y juguetes para los pequeños'); -- id 5
INSERT INTO categorias(nombre, descripcion) VALUES ('Veterinaria','Articulos de veterinaria para las mascotas'); -- id 6
INSERT INTO categorias(nombre, descripcion) VALUES ('Computo','Articulos de computo para mantenimiento de equipos'); -- id 7

/*
	REGISTROS DE ARTICULOS DE LA TIENDA, SE TIENE QUE ASIGNAR UN ID DE LAS CATEGORIAS EXISTENTES QUE SE ENCUENTRAR EN LAS PRIMERAS INSERCIONES,
    PARA ASIGNAR LOS "SKU" TIENES QUE AGREGAR YAK SEGUIDO DEL DIGITO CORRESPONDIENTE Y LAS 3 PRIMERAS LETRAS DE LA CATEGORIA,
    COMO EL PRIMER REGISTRO ES EL PRIMERO EN LA CATEGORIA DE CERAMICA, SU SKU ES YAK0001CER, POR LO QUE SI AGREGAS OTRO ARTICULO
    DE LA CATEGORIA CERAMICA, TENDRAS QUE AUMENTAR EL DIGITO DE 0001 A 0002, ENTONCES QUEDARIA YAK0002CER,
    PERO SI AGREGAS UN ARTICULO NUEVO PARA DECORACION Y ES EL PRIMERO DE LA CATEGORIA ENTONCES ES YAK0001DEC Y ASÍ,
    NO TE VAYAS A PERDER CON LOS "SKU"
    EL PROCENTAJE DE DESCUENTO SE AGREGA EN DECIMAL, SI EL ARTICULO TIENE UN DESCUENTO DEL 20%,
    SU PRECIO SERÁ 80% DEL VALOR ORIGINAL, POR LO QUE EL DESCUENTO EN EL REGISTRO DEBE SER 0.80
*/
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
	VALUES ('YAK0001CER', 'Taza para café', 'Taza de ceramica de 255ml para tomar café', 69.99, 150, 1, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002CER', 'Taza para té', 'Taza de ceramica de 200ml para tomar té', 55.90, 100, 1, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
	VALUES ('YAK0003CER', 'Tazón hondo', 'Tazón hondo de ceramica para comer cereal', 79.99, 120, 1, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0004CER', 'Plato para taza de té', 'Plato clasico para taza de té de ceramica', 40.95, 100, 1, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0005CER', 'Plato hondo para sopa', 'Plato hondo de ceramica para comer sopa', 75.40, 120, 1, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0006CER', 'Tetera de ceramica', 'Tetera de ceramica de 600ml', 120.00, 90, 1, 0.80);

    
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001DEC', 'Planta de decorativa de plastico', 'Planta de plastico decorativa de interiores', 50.90, 100, 2, 0.70);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002DEC', 'Portaretratos', 'Portaretratos cuadrado de madera', 45.50, 60, 2, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003DEC', 'Globo terráqueo de cristal', 'Globo terráqueo decorativo decristal', 99.99, 100, 2, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0004DEC', 'Lampara decorativa', 'Lampara decorativa para mesa de noche', 88.50, 110, 2, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0005DEC', 'Espejo de figuras', 'Espejo decorativo de diferentes figuras', 77.90, 90, 2, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0006DEC', 'Tapete de entrada', 'Tapete para exterior de bienvenida', 40.99, 100, 2, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0007DEC', 'Cortinero', 'Cortinero de colores decorativo', 50.80, 100, 2, 0.80);   
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0008DEC', 'Cojines', 'Cojines para sofa con estilos diferentes', 60.99, 100, 2, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0009DEC', 'Reloj de pared', 'Reloj decorativo para pared', 60.99, 80, 2, 0.80);
    
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001VES', 'Playera de manga corta casual de caballero', 'Playera casual de colores diferentes para caballero', 40.90, 110, 3, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002VES', 'Playera de manga larga femenina', 'Playera de manga larga para dama', 45.50, 100, 3, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003VES', 'Vestido de mujer con cuello v', 'Vestido de gala con cuello v', 380.00, 40, 3, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0004VES', 'Saco para caballero', 'Saco para caballero elegante', 650.50, 40, 3, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0005VES', 'Pantalón de traje de seda', 'Pantalón elegante para caballero', 400.00, 40, 3, 0.80);
    
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001INT', 'Boxers de seda', 'Boxers para caballero de seda', 69.90, 100, 4, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002INT', 'Bikini', 'Conjunto de bikini para mujer', 163.00, 100, 4, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003INT', 'Brasier de seda', 'Brasier sin costuras de seda', 248.00, 100, 4, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0004INT', 'Camiseta de tirantes', 'Conjunto de camisetas de tirantes para caballero', 306.00, 100, 4, 0.70);
    
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001INF', 'Mameluco de punto', 'Mameluco de punto para bebé', 226.00, 80, 5, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002INF', 'Overol de manga corta', 'Overol de manga corta para bebé', 542.00, 80, 5, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003INF', 'Juguetes para bebé', 'Conjunto de juguetes para niños mayores a 6 años', 100.00, 100, 5, 0.80);
    
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001VET', 'Cartilla de vacunación', 'Carilla de vacunación para mascotas', 300.00, 80, 6, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002VET', 'Etiqueta de identificacion canina', 'Etiqueta de identificacion canina', 197.80, 100, 6, 0.90);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003VET', 'Peine multifuncional', 'Peine Multifuncional para Mascotas, Kit de Peine de Masaje de Acero Inoxidable', 399.00, 80, 6, 0.80);

INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0001COM', 'Pasta térmica', 'Pasta térmica para todos los procesadores', 269.00, 100, 7, 0.80);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0002COM', 'Asus Motherboard AMD B550', 'Motherboard AMD B550 Prime B550M-A AC, AM4 mATX con PCIe 4.0, dual M.2, WiFi, HDMI, D-Sub, DVI, SATA 6 Gbps, puertos USB 3.2 Gen 2 e iluminación Aura Sync RGB', 1979.00, 100, 7, 0.85);
INSERT INTO articulos(sku, titulo, descripcion, precio, stock, categoria_id, descuento)
    VALUES ('YAK0003COM', 'Carcasa para PC ATX 5 PWM ARGB con Ventiladores preinstalados', 'KEDIERS - Carcasa para PC ATX 5 PWM ARGB con Ventiladores preinstalados, USB 3.0 de Torre Media con Vidrio Templado Doble de vista Completa, Funda para PC para Juegos, G800', 1889.00, 100, 7, 0.90);


/*
	AQUI SON LAS INSERCIONES DE LOS CLIENTES, DEBERÁS CREAR SU NOMBRE DE USUARIO DE LA SIGUIENTE MANERA:
    Primeras 2 letras de su apellido paterno + primer letra de su apellido materno + . + primeras 3 letras del primer nombre (en caso de tener 2) + . + el año actual.
    EL PRIMER REGISTRO ES PARA HERRERA YAÑEZ SAMUEL OSWALDO, POR LO QUE EL USUARIO QUEDA DE LA SIGUIENTE FORMA: hey.sam.2024
    PARA LOS EMAILS ES AGREGAR @gmail.com a sus nombres de usuario, por lo que para este usuario es hey.sam.2024@gmail.com
    LAS CONTRASEÑAS POR DEFAULT LAS VAMOS A DEJAR EN 1234567 PARA TODOS LOS USUARIOS
    CAMBIA VALORES EN LAS FECHAS DE LOS USUARIOS, SIGUE EL MISMO FORMATO QUE EN LA INSERCIÓN DE AQUÍ
    TE PONGO 3 INSERCIONES, AGREGA MAS
*/
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado) 
	VALUES ('hey.sam.2024','1234567','hey.sam.2024@gmail.com','Samuel Oswaldo','Herrera','Yañez','2024-09-30 16:19:03',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado) 
	VALUES ('ria.ger.2024','1234567','ria.ger.2024@gmail.com','Gerardo','Rivera','Axomulco','2024-09-30 16:24:09',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('nig.ger.2024','1234567','nig.ger.2024@gmail.com','German','Nieto','Galvez','2024-10-01 16:27:21',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('ria.edg.2024','1234567','ria.edg.2024@gmail.com','Edgar','Rivera','Torres','2024-10-01 16:27:21',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('nav.ali.2024','1234567','nav.ali.2024@gmail.com','Alison','Nava','Axomulco','2024-10-01 16:27:21',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('sos.dan.2024','1234567','sos.dan.2024@gmail.com','Daniel','Sosa','Valladares','2024-10-01 16:27:21',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('ros.per.2024','1234567','ros.per.2024@gmail.com','Rosa','Perez','Gonzalez','2024-10-01 16:27:21',1);
INSERT INTO clientes(user_name, contrasena, email, nombres, ap_pat, ap_mat, fecha_creacion, estado)
	VALUES ('gon.ibr.2024','1234567','gon.ibr.2024@gmail.com','Ibrahim','Hernandez','Gonzalez','2024-10-01 16:27:21',1);
    
/*
	LAS SIGUIENTES INSERCIONES SON DE LAS TARJETAS, INGRESA 16 NUMEROS SEPARADOS EN GRUPOS DE 4, SOLO METE LOS SIGUIENTES NUMEROS COMO 2222 2222 2222 2222 Y 3333 3333 3333 3333
    Y SIGUE ASI, ES PARA TENER DATOS QUE MOSTRAR
*/    
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('1111 1111 1111 1111', '06', '26', '111', 'HERRERA YAÑEZ SAMUEL OSWALDO');
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('2222 2222 2222 2222', '07', '27', '222', 'GERARDO RIVERA AXOMULCO');
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('3333 3333 3333 3333', '08', '28', '333', 'EDGAR RIVERA TORRES');
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('4444 4444 4444 4444', '09', '29', '444', 'ROSA PEREZ GONZALEZ');
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('5555 5555 5555 5555', '10', '30', '555', 'GERMAN NIETO GALVEZ');
INSERT INTO tarjetas(numero, mm, aa, ccc, propietario) VALUES ('6666 6666 6666 6666', '11', '31', '666', 'DANIEL SOSA VALLADARES');



/*
	ESTA TABLA ES PARA MAPEAR USUARIOS CON SUS TARJETAS, RECUERDA QUE UN USUARIO PUEDE TENER VARIAS TARJETAS Y UNA TARJETA PUEDE PERTENECER A VARIOS USUARIOS
    POR LO QUE TENDRAS QUE VERIFICAR QUE NO ESTAS ASIGNANDO UNA TARJETA A UN USUARIO QUE YA SE LA HABIAS ASIGNADO, 
    VERIFICA QUE LA TARJETA ES DE LAS REGISTRADAS AL IGUAL QUE LOS NOMBRES DE USUARIO PARA QUE NO TE GENERE UN ERROR
*/
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('hey.sam.2024','1111 1111 1111 1111');
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('ria.ger.2024','2222 2222 2222 2222');
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('ria.edg.2024','3333 3333 3333 3333');
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('ros.per.2024','4444 4444 4444 4444');
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('nig.ger.2024','5555 5555 5555 5555');
INSERT INTO clientetarjeta(user_name, number_card) VALUES ('sos.dan.2024','6666 6666 6666 6666');

/*
	ESTA TABLA ES DEL CARRITO DE CADA CLIENTE, EN ESTE SOLO HABRA UN USUARIO POR REGISTRO, O SEA UN user_name POR REGISTRO
    ESTA TABLA ES UN POCO MAS DIFICIL PORQUE VAS A AGREGAR LOS ARTICULOS EN FORMA DE JSON
    TE DEJO LA ESTRUCTURA EN BLANCO PARA QUE NO TENGAS QUE ESCRIBIRLA DESDE 0
    {"articulos":[{"sku":"","cantidad":0}]}
    O SI LE ASIGNAS MAS DE UN ARTICULO
    {"articulos":[{"sku":"","cantidad":0},{"sku":"","cantidad":0},{"sku":"","cantidad":0}]}
    Y ASI DEPENDIENDO DE CUANTOS ARTICULOS LE AGREGUES AL USUARIO
    PROCURA AGREGAR SKU EXISTENTES, NO HAY UNA FORMA DE VALIDAR QUE EL SKU QUE INGRESES EXISTA
*/
INSERT INTO carrito (cliente_id, articulos)
	VALUES('hey.sam.2024','{"articulos":[{"sku":"YAK0001CER","cantidad":1},{"sku":"YAK0002CER","cantidad":1},{"sku":"YAK0003CER","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos)
	VALUES('ria.ger.2024','{"articulos":[{"sku":"YAK0001DEC","cantidad":1},{"sku":"YAK0002DEC","cantidad":1},{"sku":"YAK0003DEC","cantidad":1}]}');    
INSERT INTO carrito (cliente_id, articulos)
	VALUES('ria.edg.2024','{"articulos":[{"sku":"YAK0001VES","cantidad":1},{"sku":"YAK0002VES","cantidad":1},{"sku":"YAK0003VES","cantidad":1}]}');    
INSERT INTO carrito (cliente_id, articulos)
	VALUES('ros.per.2024','{"articulos":[{"sku":"YAK0001INT","cantidad":1},{"sku":"YAK0002INT","cantidad":1},{"sku":"YAK0003INT","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos)
	VALUES('nig.ger.2024','{"articulos":[{"sku":"YAK0001INF","cantidad":1},{"sku":"YAK0002INF","cantidad":1},{"sku":"YAK0003INF","cantidad":1}]}');
INSERT INTO carrito (cliente_id, articulos)
	VALUES('sos.dan.2024','{"articulos":[{"sku":"YAK0001VET","cantidad":1},{"sku":"YAK0002VET","cantidad":1},{"sku":"YAK0001COM","cantidad":1},{"sku":"YAK0002COM","cantidad":1}]}');

/*
	SON LOS ESTADOS EXISTENTES PARA UNA COMPRA
*/
INSERT INTO estados(estado) VALUES ('En proceso'); -- 1
INSERT INTO estados(estado) VALUES ('Autorizado'); -- 2
INSERT INTO estados(estado) VALUES ('En embarque'); -- 3
INSERT INTO estados(estado) VALUES ('Enviado'); -- 4
INSERT INTO estados(estado) VALUES ('Entregado'); -- 5


/*
	AQUI AGREGAMOS LAS COMPRAS DE LOS USUARIOS, EL FOLIO DE LA COMPRA SE GENERA CON LAS INICIALES YC MAS LAS 3 PRIMERAS
    LETRAS DEL USUARIO QUE REALIZA LA COMPRA MAS LA FECHA DE LA COMPRA MAS SU HORA,  UN EJEMPLO ES QUE SE REALIZA LA COMPRA
    EL 11 DE OCTUBRE DEL 2024 A LAS 12:55:52 HRS (EN FORMATO DE 24 HORAS), POR LO QUE EL FOLIO QUEDA DE LA SIGUIENTE FORMA
    YCHEY20241011125548
    cliente_id ES EL user_name DE EL CLIENTE QUE HIZO LA COMRA
    fecha_pedido ES LA MISMA FECHA QUE AGREGAS EN EL FOLIO
    EL CAMPO DE DETALLES ES CON LA MISMA ESTRUCTURA DEL CAMPO articulos EN LA TABLA carrito, ES UN JSON CON LOS ARTICULOS COMPRADOS Y SUS CANTIDADES
    EN estado DEBES DE AGREGAR EL id DE LOS ESTADOS EXISTENTES QUE SE INSERTARON ARRIBA
*/

INSERT INTO compras(folio_compra, cliente_id, fecha_pedido, total, detalles, estado) VALUES (
	'YCHEY20241011125548',
    'hey.sam.2024',
    '2024-10-11 12:55:48',
    69.99,
    '{"articulos":[{"sku":"YAK0001CER","cantidad":1},{"sku":"YAK0002CER","cantidad":1},{"sku":"YAK0003CER","cantidad":1}]}',
    1
);

INSERT INTO compras(folio_compra, cliente_id, fecha_pedido, total, detalles, estado) VALUES (
	'YCRIA20241012000707',
    'ria.ger.2024',
    '2024-10-12 12:07:07',
    50.90,
    '{"articulos":[{"sku":"YAK0001DEC","cantidad":1},{"sku":"YAK0002DEC","cantidad":1},{"sku":"YAK0003DEC","cantidad":1}]}',
    1
);
INSERT INTO compras(folio_compra, cliente_id, fecha_pedido, total, detalles, estado) VALUES (
	'YCRIA20241012001105',
    'ria.edg.2024',
    '2024-10-12 12:11:05',
    40.90,
    '{"articulos":[{"sku":"YAK0001VES","cantidad":1},{"sku":"YAK0002VES","cantidad":1},{"sku":"YAK0003VES","cantidad":1}]}',
    1
);

INSERT INTO compras(folio_compra, cliente_id, fecha_pedido, total, detalles, estado) VALUES (
	'YCRIA20241012001106',
    'ria.edg.2024',
    '2024-10-12 12:11:05',
    40.90,
    '{"articulos":[{"sku":"YAK0001VES","cantidad":1},{"sku":"YAK0002VES","cantidad":1},{"sku":"YAK0003VES","cantidad":1}]}',
    1
);

INSERT INTO compras(folio_compra, cliente_id, fecha_pedido, total, detalles, estado) VALUES (
	'YCRIA20241012001107',
    'ria.edg.2024',
    '2024-10-11 12:55:48',
    69.99,
    '{"articulos":[{"sku":"YAK0001CER","cantidad":1},{"sku":"YAK0002CER","cantidad":1},{"sku":"YAK0003CER","cantidad":1}]}',
    1
);

/*
	PARA LOS MENSAJES, SOLO HABRA UN FOLIO POR REGISTRO Y LOS MENSAJES TENDRAN LA SIGUIENTE ESTRUCTURA:
    {"mensajes":[{"fecha_hora":"2024-10-11 12:59:48", "mensaje":"Se realizo la compra"},{"fecha_hora":"2024-10-11 13:34:22", "mensaje":"Se valido la compra"}]}
    TE DEJO LA ESTRUCTURA EN BLANCO
    {"mensajes":[{"fecha_hora":"", "mensaje":""}]}
    PARA MAS MENSAJES SOLO AGREGA LO SIGUIENTE {"fecha_hora":"", "mensaje":""}
    SEPARANDOLO CON UNA COMA DEL ANTERIOR, QUEDANDO DE LA SIGUIENTE MANERA
    {"mensajes":[{"fecha_hora":"", "mensaje":""},{"fecha_hora":"", "mensaje":""},{"fecha_hora":"", "mensaje":""}]}
*/
INSERT INTO mensajes(folio_compra, mensajes) VALUES(
	'YCHEY20241011125548',
    '{"mensajes":[{"fecha_hora":"2024-10-11 12:59:48", "mensaje":"Se realizo la compra"},{"fecha_hora":"2024-10-11 13:34:22", "mensaje":"Se valido la compra"}]}'
);
INSERT INTO mensajes(folio_compra, mensajes) VALUES(
	'YCRIA20241012000707',
    '{"mensajes":[{"fecha_hora":"2024-10-12 12:07:07", "mensaje":"Se realizo la compra"},{"fecha_hora":"2024-10-12 12:20:05", "mensaje":"Se valido la compra"}]}'
);
INSERT INTO mensajes(folio_compra, mensajes) VALUES(
	'YCRIA20241012001105',
    '{"mensajes":[{"fecha_hora":"2024-10-12 12:11:05", "mensaje":"Se realizo la compra"},{"fecha_hora":"2024-10-11 12:40:09", "mensaje":"Se valido la compra"}]}'
);