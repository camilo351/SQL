INSERT INTO productos (nombre, precio, stock)
VALUES 
('Laptop', 1200.50, 10),
('Mouse', 25.99, 50),
('Teclado', 45.75, 30);

INSERT INTO productos (nombre, precio, stock) 
VALUES 
('Laptop 1', 1200.50, 10),
('Mouse 1', 25.99, 50),
('Teclado 1', 45.00, 30),
('Laptop 2', 1250.00, 15),
('Mouse 2', 30.49, 60),
('Teclado 2', 50.00, 25),
('Laptop 3', 1100.99, 8),
('Mouse 3', 28.99, 55),
('Teclado 3', 48.50, 20),
('Laptop 4', 1300.00, 5),
('Mouse 4', 26.50, 40),
('Teclado 4', 55.00, 35),
('Laptop 5', 1199.49, 12),
('Mouse 5', 29.99, 45),
('Teclado 5', 52.00, 28),
('Laptop 6', 1255.00, 14),
('Mouse 6', 27.49, 50),
('Teclado 6', 49.99, 32),
('Laptop 7', 1280.75, 7),
('Mouse 7', 24.99, 60);

SELECT * FROM public.productos;

SELECT * FROM public.productos
WHERE precio <= 50
ORDER BY precio ASC;

UPDATE productos
SET precio = 50.00
WHERE nombre = 'Teclado';

DELETE FROM productos
WHERE nombre = 'Mouse';

SELECT * FROM public.productos
WHERE stock > 20
ORDER BY precio ASC;

SELECT * FROM public.productos
WHERE precio BETWEEN 24.99 AND 29.99
ORDER BY precio ASC;

SELECT * FROM public.productos
WHERE id IN (1,3,12);

SELECT * FROM public.productos
WHERE nombre IN (SELECT nombre FROM public.productos WHERE stock > 20)
ORDER BY id ASC;

SELECT SUM (precio) AS total_precio
FROM productos;

SELECT AVG (precio) AS promedio_producto
FROM productos;

SELECT COUNT (*) AS total_producto
FROM productos
WHERE id BETWEEN 1 AND 20;

SELECT nombre, SUM(precio) AS total_precio
FROM public.productos
GROUP BY nombre
ORDER BY nombre ASC;

UPDATE productos 
SET nombre = 'Teclado'
WHERE nombre = 'Laptop 1';

SELECT * FROM public.productos;

UPDATE public.productos
SET nombre = 'Teclado'
WHERE nombre = 'Mouse1';

UPDATE public.productos
SET nombre = 'Teclado'
WHERE nombre = 'Teclado 6';

SELECT * FROM public.productos
WHERE nombre LIKE 'Teclado%';

SELECT nombre, SUM (precio) AS total_precio
FROM public.productos
GROUP BY nombre
ORDER BY nombre;

SELECT nombre, SUM (precio) AS promedio_precio
FROM public.producto
GROUP BY nombre
HAVING SUM (precio) > 25.00
ORDER BY nombre ASC;

INSERT INTO public.producto (nombre, correo, precio) VALUES
('Laptop Dell', 'dell.support@example.com', 1200.50),
('Mouse Logitech', 'logitech.sales@example.com', 25.99),
('Teclado Razer', 'razer.sales@example.com', 45.00),
('Monitor LG', 'lg.support@example.com', 200.75),
('Impresora HP', 'hp.support@example.com', 150.00),
('Auriculares Sony', 'sony.audio@example.com', 85.50),
('Cámara Canon', 'canon.support@example.com', 500.00),
('Router TP-Link', 'tplink.support@example.com', 75.25),
('Memoria USB Kingston', 'kingston.sales@example.com', 15.99),
('Disco SSD Samsung', 'samsung.support@example.com', 120.00),
('Tablet Apple', 'apple.support@example.com', 800.00),
('Smartphone Xiaomi', 'xiaomi.sales@example.com', 300.00),
('Parlante JBL', 'jbl.audio@example.com', 100.00),
('Teclado HyperX', 'hyperx.sales@example.com', 60.00),
('Mousepad SteelSeries', 'steelseries.sales@example.com', 20.00),
('Disco Duro WD', 'wd.support@example.com', 70.50),
('Laptop HP', 'hp.sales@example.com', 1100.00),
('Monitor Dell', 'dell.support@example.com', 180.00),
('Auriculares Bose', 'bose.audio@example.com', 250.00),
('Teclado Logitech', 'logitech.sales@example.com', 50.00);

SELECT *
FROM public.producto
WHERE precio BETWEEN 500 AND 1500;

SELECT *
FROM public.producto
WHERE nombre LIKE '%e%';

SELECT * FROM public.producto
ORDER BY precio DESC
LIMIT 3;

INSERT INTO public.venta (nombre, unidades, precio) VALUES
('Laptop Dell', 2, 1200.50),
('Mouse Logitech', 10, 25.99),
('Teclado Razer', 5, 45.00),
('Monitor LG', 3, 200.75),
('Impresora HP', 1, 150.00),
('Auriculares Sony', 4, 85.50),
('Cámara Canon', 1, 500.00),
('Router TP-Link', 6, 75.25),
('Memoria USB Kingston', 15, 15.99),
('Disco SSD Samsung', 7, 120.00),
('Tablet Apple', 2, 800.00),
('Smartphone Xiaomi', 3, 300.00),
('Parlante JBL', 4, 100.00),
('Teclado HyperX', 8, 60.00),
('Mousepad SteelSeries', 12, 20.00),
('Disco Duro WD', 5, 70.50),
('Laptop HP', 1, 1100.00),
('Monitor Dell', 3, 180.00),
('Auriculares Bose', 2, 250.00),
('Teclado Logitech', 6, 50.00);

SELECT nombre, SUM(unidades) AS total_unidades
FROM public.venta
GROUP BY nombre
HAVING SUM (unidades) > 2
ORDER BY nombre ASC;

SELECT SUM(precio) AS total_precio,
       AVG (precio) AS promedio_precio
FROM public.venta
WHERE nombre LIKE 'S%';


SELECT * FROM public.venta
WHERE nombre LIKE 'S%';

SELECT * FROM  public.venta;

UPDATE public.venta
SET nombre = 'Smartphone Xiaomi'
WHERE id_venta = 1;

SELECT COUNT (unidades) AS total_unidades
FROM public.venta
GROUP BY nombre
HAVING COUNT (unidades) > 3;


INSERT INTO public.ventas_realizadas (nombre, precio, fecha_venta, cliente) VALUES
('Laptop Dell', 1200.50, '2024-01-01', 'Juan Pérez'),
('Mouse Logitech', 25.99, '2024-01-02', 'Ana Gómez'),
('Teclado Razer', 45.00, '2024-01-03', 'Carlos Díaz'),
('Monitor LG', 200.75, '2024-01-04', 'Luisa Martínez'),
('Impresora HP', 150.00, '2024-01-05', 'Pedro López'),
('Auriculares Sony', 85.50, '2024-01-06', 'María Castillo'),
('Cámara Canon', 500.00, '2024-01-07', 'José Torres'),
('Router TP-Link', 75.25, '2024-01-08', 'Laura Sánchez'),
('Memoria USB Kingston', 15.99, '2024-01-09', 'Ricardo Fernández'),
('Disco SSD Samsung', 120.00, '2024-01-10', 'Sofía Ramírez'),
('Tablet Apple', 800.00, '2024-01-11', 'Andrés Molina'),
('Smartphone Xiaomi', 300.00, '2024-01-12', 'Carmen Vázquez'),
('Parlante JBL', 100.00, '2024-01-13', 'Miguel Ortega'),
('Teclado HyperX', 60.00, '2024-01-14', 'Patricia Ríos'),
('Mousepad SteelSeries', 20.00, '2024-01-15', 'Diego Méndez'),
('Disco Duro WD', 70.50, '2024-01-16', 'Elena Cruz'),
('Laptop HP', 1100.00, '2024-01-17', 'Jorge Herrera'),
('Monitor Dell', 180.00, '2024-01-18', 'Valeria Flores'),
('Auriculares Bose', 250.00, '2024-01-19', 'Luis Gutiérrez'),
('Teclado Logitech', 50.00, '2024-01-20', 'Clara Núñez');

INSERT INTO public.ventas_realizadas (nombre, precio, fecha_venta, cliente) VALUES
('Laptop Dell', 1200.50, '2023-12-15', 'Juan Pérez'),
('Mouse Logitech', 25.99, '2022-11-20', 'Ana Gómez'),
('Teclado Razer', 45.00, '2021-10-10', 'Carlos Díaz'),
('Monitor LG', 200.75, '2020-09-25', 'Luisa Martínez'),
('Impresora HP', 150.00, '2025-02-15', 'Pedro López'),
('Auriculares Sony', 85.50, '2026-03-30', 'María Castillo'),
('Cámara Canon', 500.00, '2019-07-05', 'José Torres'),
('Router TP-Link', 75.25, '2018-05-18', 'Laura Sánchez'),
('Memoria USB Kingston', 15.99, '2024-04-10', 'Ricardo Fernández'),
('Disco SSD Samsung', 120.00, '2027-06-12', 'Sofía Ramírez'),
('Tablet Apple', 800.00, '2017-01-03', 'Andrés Molina'),
('Smartphone Xiaomi', 300.00, '2023-03-08', 'Carmen Vázquez'),
('Parlante JBL', 100.00, '2022-08-15', 'Miguel Ortega'),
('Teclado HyperX', 60.00, '2021-11-28', 'Patricia Ríos'),
('Mousepad SteelSeries', 20.00, '2020-02-14', 'Diego Méndez'),
('Disco Duro WD', 70.50, '2019-12-31', 'Elena Cruz'),
('Laptop HP', 1100.00, '2025-10-05', 'Jorge Herrera'),
('Monitor Dell', 180.00, '2026-07-20', 'Valeria Flores'),
('Auriculares Bose', 250.00, '2018-09-12', 'Luis Gutiérrez'),
('Teclado Logitech', 50.00, '2027-03-01', 'Clara Núñez');


SELECT * FROM public.ventas_realizadas
WHERE fecha_venta > '2024-01-01'
ORDER BY fecha_venta DESC;

SELECT * FROM public.ventas_realizadas
ORDER BY precio DESC
LIMIT 3;

SELECT nombre,
       COUNT(nombre) AS total_categoria,
       AVG (precio) AS promedio_categoria
FROM public.ventas_realizadas
GROUP BY nombre;

SELECT cliente FROM public.ventas_realizadas
GROUP BY cliente
HAVING COUNT() > 3;

SELECT * FROM public.ventas_realizadas
WHERE nombre LIKE '____a';

INSERT INTO public.cliente (nombre, correo, compra, unidades) VALUES
('Juan Pérez', 'juan.perez@example.com', 150.75, 2),
('Ana Gómez', 'ana.gomez@example.com', 200.50, 3),
('Carlos Díaz', 'carlos.diaz@example.com', 120.00, 1),
('Luisa Martínez', 'luisa.martinez@example.com', 310.25, 5),
('Pedro López', 'pedro.lopez@example.com', 180.00, 2),
('María Castillo', 'maria.castillo@example.com', 240.50, 4),
('José Torres', 'jose.torres@example.com', 130.99, 1),
('Laura Sánchez', 'laura.sanchez@example.com', 215.00, 3),
('Ricardo Fernández', 'ricardo.fernandez@example.com', 190.75, 2),
('Sofía Ramírez', 'sofia.ramirez@example.com', 275.00, 4),
('Andrés Molina', 'andres.molina@example.com', 155.25, 1),
('Carmen Vázquez', 'carmen.vazquez@example.com', 230.50, 2),
('Miguel Ortega', 'miguel.ortega@example.com', 140.00, 1),
('Patricia Ríos', 'patricia.rios@example.com', 195.75, 3),
('Diego Méndez', 'diego.mendez@example.com', 220.00, 2),
('Elena Cruz', 'elena.cruz@example.com', 300.00, 5),
('Jorge Herrera', 'jorge.herrera@example.com', 160.50, 2),
('Valeria Flores', 'valeria.flores@example.com', 250.75, 3),
('Luis Gutiérrez', 'luis.gutierrez@example.com', 180.99, 2),
('Clara Núñez', 'clara.nunez@example.com', 210.25, 3);

SELECT id_cliente FROM public.cliente
GROUP BY id_cliente
HAVING COUNT (id_cliente) > 3;

INSERT INTO tienda_ropa.producto (nombre, precio)
VALUES ('Laptop', 1200),
('Teclado', 100),
('Mouse', 50),
('Monitor', 100),
('Mousepad', 10),
('Camara', 500),
('Smartphone', 800),
('Impresora', 200);

SELECT * FROM tienda_ropa.producto
ORDER BY precio DESC
LIMIT 3;

SELECT * FROM tienda_ropa.producto
ORDER BY precio ASC
LIMIT 4;

SELECT * FROM tienda_ropa.producto
ORDER BY precio ASC
LIMIT 2 OFFSET 4;

SELECT * FROM tienda_ropa.producto
WHERE precio > 100
ORDER BY precio DESC
LIMIT 2;


INSERT INTO practica.producto (producto_id, nombre, precio, unidades_vendidas)
VALUES (1,'Camisa',85000, 304),
(2, 'Pantalon Baggy',100000, 276),
(3,'Jordan',160000,1000),
(4,'Gorra NY',100000,223),
(5,'Nike AIR',160000,345),
(6,'Camisa NY', 100000, 366),
(7,'Cargo Pants',335000,388),
(8,'Sudadera',50000,200),
(9,'Sombrero',100000, 23),
(10,'TN NIKE', 180000,59);

SELECT * FROM practica.producto
WHERE precio > 50000
ORDER BY precio ASC;

SELECT nombre,precio FROM practica.producto
WHERE nombre LIKE '%a%';

SELECT COUNT (producto_id) AS total_producto
FROM practica.producto;

SELECT * FROM practica.producto
ORDER BY precio ASC
LIMIT 1;

SELECT * FROM practica.producto
ORDER BY precio DESC
LIMIT 1;

SELECT * FROM practica.producto
WHERE precio BETWEEN 10000 AND 50000
LIMIT 5;

SELECT nombre, precio FROM practica.producto
WHERE precio > 20000 AND precio < 100000
ORDER BY precio ASC;

SELECT * FROM practica.producto
WHERE nombre LIKE 'C%';

SELECT nombre, SUM (unidades_vendidas) AS total_unidades
FROM practica.producto
GROUP BY nombre
ORDER BY total_unidades DESC;

SELECT * FROM practica.producto
WHERE precio > 120000 AND unidades_vendidas > 300
ORDER BY unidades_vendidas DESC;

SELECT nombre, AVG (precio) AS precio_promedio
FROM practica.producto
GROUP BY nombre;

SELECT nombre FROM practica.producto
WHERE nombre LIKE '%a';

SELECT nombre, unidades_vendidas FROM practica.producto
ORDER BY unidades_vendidas DESC
LIMIT 3;

SELECT nombre,precio, SUM(unidades_vendidas) AS total_unidades_vendidas
FROM practica.producto
WHERE precio BETWEEN 80000 AND 150000
GROUP BY nombre,precio;

SELECT nombre, SUM(unidades_vendidas) AS total_unidades_vendidas
FROM practica.producto
GROUP BY nombre
ORDER BY total_unidades_vendidas DESC;

SELECT precio, AVG (precio) AS promedio_precio
FROM practica.producto
GROUP BY precio
HAVING (precio) <= 100000;

SELECT precio, AVG (precio) AS promedio_precio
FROM practica.producto
GROUP BY precio 
HAVING (precio) > 100000 AND (precio) <= 200000;

SELECT precio, AVG (precio) AS promedio_precio
FROM practica.producto
GROUP BY precio
HAVING (precio) > 200000;

SELECT precio, COUNT (producto_id) AS total_producto
FROM practica.producto
GROUP BY precio;

SELECT LEFT (nombre, 1) AS primer_caracter,
       MAX (precio) AS precio_maximo,
	   MIN (precio) AS precio_minimo
FROM practica.producto
GROUP BY primer_caracter
ORDER BY primer_caracter ASC;

SELECT precio,
      SUM (unidades_vendidas) AS total_unidades_vendidas,
	  AVG (precio) AS precio_promedio
FROM practica.producto
GROUP BY precio
HAVING (precio) > 100000;

SELECT LEFT (nombre, 1) AS primer_caracter,
       AVG (precio) AS promedio_precio
FROM practica.producto
GROUP BY primer_caracter;

SELECT precio,
       MAX (precio) AS precio_maximo,
       MIN (precio) AS precio_minimo
FROM practica.producto
WHERE unidades_vendidas > 200
GROUP BY precio
ORDER BY precio DESC;

SELECT nombre,
       SUM (unidades_vendidas) AS total_unidades_vendidas,
       AVG (precio) AS precio_promedio
FROM practica.producto
WHERE nombre LIKE '_______'
GROUP BY nombre;

SELECT precio, 
       AVG (precio) AS promedio_precio
FROM practica.producto
WHERE unidades_vendidas > 100
GROUP BY precio
HAVING (precio) > 120000;

SELECT unidades_vendidas,
      SUM (unidades_vendidas) AS total_unidades_vendidas
FROM practica.producto
GROUP BY unidades_vendidas
ORDER BY unidades_vendidas DESC;