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