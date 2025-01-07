SELECT clientes.nombre, clientes.ciudad, pedidos.producto, pedidos.unidades
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.nombre, clientes.ciudad
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.cliente_id IS NULL;

SELECT clientes.nombre, COUNT (pedidos.pedido_id) AS total_pedidos
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY total_pedidos ASC;

SELECT clientes.nombre, MAX(pedidos.pedido_id) AS ultimo_pedido
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY clientes.nombre ASC;

SELECT clientes.nombre, pedidos.producto
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.nombre LIKE 'M%';

SELECT clientes.nombre, clientes.ciudad
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE NOT pedidos.producto = 'Zapatos' OR pedidos.producto IS NULL;

SELECT clientes.nombre, COALESCE(SUM (pedidos.unidades), 0) AS total_unidades
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY total_unidades DESC;

SELECT clientes.nombre, clientes.ciudad, MAX(pedidos.producto) AS ultima_compra
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.ciudad = 'Bogota' OR clientes.ciudad = 'Medellin'
GROUP BY clientes.nombre, clientes.ciudad;

SELECT clientes.nombre, pedidos.producto
FROM clientes
INNER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;

INSERT INTO clientes (nombre,ciudad)
VALUES ('Pirlo', 'Cali');

INSERT INTO pedidos (cliente_id, producto, unidades)
VALUES (6, 'Zapatos', 12);

INSERT INTO pedidos (cliente_id, producto, unidades)
VALUES (3, 'Gorras', 14);

SELECT * FROM public.clientes;
SELECT * FROM public.pedidos;
###consultas####

SELECT clientes.nombre, clientes.ciudad
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE NOT pedidos.producto = 'Camisa' OR pedidos.producto IS NULL;


SELECT clientes.nombre, COALESCE(SUM(pedidos.unidades), 0) AS total_unidades
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;


SELECT clientes.nombre, pedidos.producto
FROM clientes
INNER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.unidades > 10;


SELECT clientes.nombre, MAX (pedidos.pedido_id) AS ultimo_pedido
FROM clientes 
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;


SELECT clientes.nombre, COALESCE(MAX(pedidos.unidades),0) AS producto_mas_vendido
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY producto_mas_vendido DESC;



CREATE TABLE clientes (
cliente_id SERIAl PRIMARY KEY,
nombre VARCHAR (100),
ciudad VARCHAR (100)
);

CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto VARCHAR (100),
unidades INT,
precio NUMERIC,
fecha_pedido DATE,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_Id)
);

INSERT INTO clientes (nombre,ciudad)
VALUES 
('Camilo Hernandez', 'Medellín'),
('Sofia Perez', 'Medellín'),
('Melany Sanchez', 'Medellín'),
('Geraldine Gonzalez', 'Barranquilla'),
('Andrea Perez', 'Barranquilla'),
('Jhon Salchichon', 'Bogota');

INSERT INTO pedidos (cliente_id,producto,unidades,precio,fecha_pedido)
VALUES
(1,'Camisa',3,80000,'2024-01-05'),
(2,'Pantalon',2,100000,'2024-02-10'),
(3,'Zapatos',2,240000,'2024-01-15'),
(1,'Chaqueta',1,150000,'2024-03-01'),
(3,'Sombrero',1,20000,'2024-01-25'),
(4,'Zapatos',1,120000,'2024-01-14');

SELECT clientes.nombre, clientes.ciudad, pedidos.fecha_pedido
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.pedido_id IS NULL;



SELECT clientes.nombre, clientes.ciudad, pedidos.producto 
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.ciudad = 'Bogota' OR pedidos.cliente_id IS NULL
ORDER BY clientes.ciudad ASC;



SELECT clientes.nombre, pedidos.producto, COALESCE(SUM (pedidos.unidades),0) AS total_unidades
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre, pedidos.producto
ORDER BY total_unidades DESC;



SELECT clientes.nombre, COALESCE (pedidos.producto, 'sin pedidos') AS producto
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.producto = 'Zapatos' OR pedidos.cliente_id IS NULL;



SELECT clientes.nombre, pedidos.producto, MAX (pedidos.precio) AS precio_maximo
FROM clientes
LEFT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre, pedidos.producto
ORDER BY precio_maximo ASC;



--CONSULTAS 2 DE LEFT JOIN--


