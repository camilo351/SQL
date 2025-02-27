CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (50),
ciudad VARCHAR (50)
);

INSERT INTO clientes (cliente_id,nombre,ciudad) VALUES
(1, 'Juan Pérez', 'Bogotá'),
(2, 'María López', 'Medellín'),
(3, 'Carlos Ruiz', 'Cali'),
(4, 'Ana Torres', 'Barranquilla');

CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto VARCHAR (100),
cantidad INT
);

INSERT INTO pedidos (pedido_id, cliente_id, producto, cantidad) VALUES
(101, 1, 'Laptop', 1),
(102, 2, 'Teléfono', 2),
(103, 2, 'Teclado', 1),
(104, 5, 'Monitor', 1);

SELECT clientes.nombre, pedidos.*
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;



SELECT COALESCE(clientes.nombre, 'No hay cliente asociado') AS cliente, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;



SELECT clientes.nombre, COUNT(pedidos.cliente_id) AS productos_totales
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY clientes.nombre ASC;



SELECT clientes.nombre, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;



SELECT clientes.nombre, COUNT (pedidos.producto) AS total_pedidos
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;



SELECT COALESCE(clientes.nombre, 'Cliente desconocido') AS cliente, clientes.ciudad, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;



SELECT clientes.nombre, COUNT(pedidos.cliente_id) AS maximo_pedidos
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY maximo_pedidos DESC;



SELECT clientes.nombre, pedidos.producto, pedidos.cantidad
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
ORDER BY clientes.nombre ASC;



SELECT clientes.nombre, COALESCE(SUM(pedidos.cantidad),0) AS ventas_totales
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;



SELECT pedidos.cliente_id, pedidos.producto
FROM pedidos
LEFT JOIN clientes
ON pedidos.cliente_id = clientes.cliente_id
WHERE clientes.cliente_id IS NULL;

CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
ciudad VARCHAR (100),
edad INT
);

INSERT INTO clientes (nombre,ciudad,edad) VALUES
('Camilo Hernández', 'Barranquilla', 25),
('Geraldine De La Asunción', 'Barranquilla', 22),
('Juan perez', 'Cali', 27),
('Jhon Mercado', 'Bogotá', 25),
('Melany Sanchez', 'Medellín', 24);


CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto VARCHAR (100),
cantidad INT,
precio_unitario INT
);

INSERT INTO pedidos (pedido_id, cliente_id, producto, cantidad, precio_unitario) VALUES
(101, 1, 'Pantalon', 1, 100000),
(102, 1, 'Camisa', 2, 60000),
(103, 4, 'Zapatos', 2, 160000),
(104, 2, 'Gorra', 3, 75000),
(105, 7, 'Gorra', 1, 75000);

SELECT clientes.nombre, pedidos.producto, pedidos.cantidad
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.edad > 23;

SELECT clientes.nombre, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.producto LIKE 'C%';

SELECT clientes.nombre, pedidos.producto, pedidos.cantidad
FROM clientes
RIGHT JOIN pedidos 
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.cliente_id IN (1,2,4,7)
ORDER BY pedidos.cantidad ASC;

SELECT clientes.nombre, clientes.ciudad, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.ciudad NOT IN  ('Medellin','Bogotá');

SELECT COALESCE(clientes.nombre, 'Sin Cliente') AS cliente, pedidos.producto, pedidos.cantidad
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.nombre IS NULL;


SELECT clientes.nombre, pedidos.*
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.edad BETWEEN 25 AND 30;

SELECT clientes.nombre, pedidos.*
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.nombre LIKE '%a%';


SELECT clientes.nombre, pedidos.producto
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.producto IN ('Camisa', 'Zapatos');


SELECT clientes.nombre, clientes.edad, pedidos.producto, pedidos.cantidad
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.edad BETWEEN 25 AND 30 AND pedidos.producto LIKE '%o%';  


SELECT COALESCE (clientes.nombre, 'Sin cliente'),
SUM(pedidos.cantidad * pedidos.precio_unitario) AS total_pedidos
FROM clientes
RIGHT JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;