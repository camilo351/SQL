-- Crear tabla de clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    ciudad VARCHAR(100)
);

-- Crear tabla de pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT,
    producto VARCHAR(100),
    cantidad INT,
    precio_unitario NUMERIC(10, 2)
);

-- Insertar datos en la tabla clientes
INSERT INTO clientes (cliente_id, nombre, edad, ciudad) VALUES
(1, 'María Pérez', 28, 'Bogotá'),
(2, 'Carlos Gómez', 35, 'Medellín'),
(3, 'Laura Rojas', 22, 'Cali'),
(4, 'Andrés Mendoza', 45, 'Barranquilla'),
(5, NULL, 30, 'Villavicencio');

-- Insertar datos en la tabla pedidos
INSERT INTO pedidos (pedido_id, cliente_id, producto, cantidad, precio_unitario) VALUES
(101, 1, 'Camisa', 2, 30000),
(102, 2, 'Zapatos', 1, 120000),
(103, 6, 'Pantalón', 3, 40000),
(104, NULL, 'Sombrero', 5, 20000),
(105, 4, 'Corbata', 2, 25000);

SELECT clientes.cliente_id, clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id;



SELECT COALESCE(clientes.nombre, 'Sin cliente') AS cliente, COALESCE(SUM(pedidos.cantidad * pedidos.precio_unitario), 0) AS Total_vendido
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY Total_vendido ASC;



SELECT clientes.cliente_id AS clientes, pedidos.cliente_id AS pedidos
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.cliente_id IS NULL;



SELECT clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.nombre LIKE '%a%' OR pedidos.producto LIKE '%a%';



SELECT clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.cantidad > 2 OR pedidos.cliente_id IS NULL;



SELECT clientes.cliente_id, clientes.nombre, pedidos.producto, COUNT(pedidos.cliente_id) AS total_pedidos
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.cliente_id, clientes.nombre, pedidos.producto
ORDER BY cliente_id ASC;



SELECT clientes.nombre, clientes.edad, pedidos.producto, pedidos.cantidad 
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.edad > 30 OR pedidos.cantidad = 3;



SELECT clientes.cliente_id, pedidos.cliente_id, clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.cliente_id >= 3 OR pedidos.cliente_id >= 3
ORDER BY pedidos.cliente_id DESC;



SELECT clientes.nombre, clientes.ciudad
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.ciudad IN ('Medellín', 'Bogotá');



SELECT clientes.nombre, clientes.edad, pedidos.precio_unitario
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.precio_unitario > 50000 OR clientes.edad BETWEEN 20 AND 40;



SELECT clientes.ciudad, clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.ciudad, clientes.nombre, pedidos.producto;



SELECT clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.nombre LIKE '%a' OR pedidos.producto LIKE 'C%';



SELECT clientes.nombre, COUNT(pedidos.cliente_id) AS total_pedidos
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre
ORDER BY total_pedidos DESC;



SELECT clientes.nombre, pedidos.producto, pedidos.cantidad
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE NOT pedidos.cliente_id IS NULL AND NOT clientes.cliente_id IS NULL;



SELECT clientes.nombre, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.producto LIKE '%o%' AND clientes.nombre LIKE '%e%';



SELECT clientes.nombre, clientes.ciudad, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.ciudad = 'Barranquilla' OR pedidos.producto = 'Zapatos';



SELECT clientes.nombre, clientes.ciudad, pedidos.producto, pedidos.cantidad
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE pedidos.cantidad % 2 = 0;




SELECT clientes.cliente_id, clientes.nombre, pedidos.cliente_id, pedidos.producto
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE clientes.cliente_id % 2 = 1 OR pedidos.cliente_id % 2 = 1
ORDER BY clientes.cliente_id ASC;



SELECT COALESCE(clientes.nombre, 'Sin cliente'), pedidos.producto, COUNT(pedidos.cliente_id) AS total_pedidos
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre, pedidos.producto
ORDER BY clientes.nombre ASC;



SELECT 
    COALESCE(clientes.nombre, 'Sin cliente') AS cliente,
    COUNT(pedidos.pedido_id) AS total_pedidos_cliente,
    (COUNT(pedidos.pedido_id) * 100.0 / (SELECT COUNT(pedido_id) FROM pedidos)) AS porcentaje
FROM clientes
FULL OUTER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
GROUP BY clientes.nombre;
