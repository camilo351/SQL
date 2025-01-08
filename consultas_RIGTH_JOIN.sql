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

