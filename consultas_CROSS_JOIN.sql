CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    ciudad VARCHAR(50)
);

INSERT INTO clientes (nombre, edad, ciudad) VALUES
('Ana', 28, 'Bogotá'),
('Carlos', 35, 'Medellín'),
('Luisa', 22, 'Barranquilla'),
('Juan', 42, 'Cali'),
('Sofía', 30, 'Cartagena');


CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    precio_unitario DECIMAL(10, 2)
);

INSERT INTO productos (nombre, precio_unitario) VALUES
('Zapatos', 120000.00),
('Camisa', 80000.00),
('Pantalón', 150000.00),
('Gorra', 50000.00),
('Reloj', 250000.00);


CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

INSERT INTO pedidos (cliente_id, producto_id, cantidad) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 2, 3),
(4, 4, 1),
(5, 5, 2);

---EJERCICIO 1---
SELECT clientes.nombre AS cliente, productos.nombre AS producto
FROM clientes
CROSS JOIN productos;

---EJERCICIO 2---
SELECT clientes.nombre AS cliente, productos.nombre AS producto, pedidos.cantidad
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad = 2;

---EJERCICIO 3 ---
SELECT clientes.edad, productos.precio_unitario
FROM clientes
CROSS JOIN productos
ORDER BY clientes.edad ASC;

---EJERCICIO 4---
SELECT t1.nombre AS cliente, t2.ciudad AS ciudades
FROM clientes t1
CROSS JOIN clientes t2;

---EJERCICIO 5---
SELECT clientes.nombre AS clientes, productos.nombre AS producto
FROM clientes
CROSS JOIN productos
WHERE productos.nombre LIKE '%o%';

---EJERCICIO 6---
SELECT productos.nombre AS producto, pedidos.cantidad
FROM productos
CROSS JOIN pedidos
WHERE pedidos.cantidad BETWEEN 1 AND 5
ORDER BY productos.nombre ASC;

---EJERCICIO 7---
SELECT c1.nombre AS cliente_1,
c2.nombre AS cliente_2,
c1.ciudad AS ciudad
FROM clientes c1 
CROSS JOIN clientes c2 
WHERE  c1.ciudad = c2.ciudad AND c1.nombre != c2.nombre;

---EJERCICIO 8---
SELECT clientes.nombre AS clientes,
productos.nombre AS producto, 
productos.precio_unitario AS precio_normal,
productos.precio_unitario * 0.9  AS descuento
FROM clientes
CROSS JOIN productos;

---EJERCICIO 9---
SELECT clientes.ciudad AS ciudad_cliente, productos.nombre AS producto, productos.precio_unitario
FROM clientes
CROSS JOIN productos
WHERE productos.precio_unitario > 50000.00;

---EJERCICIO 10---
SELECT clientes.nombre AS clientes, productos.nombre AS producto, pedidos.cantidad
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad = 3;

---EJERCICIO 11---
SELECT clientes.nombre AS cliente, clientes.edad, productos.nombre AS producto
FROM clientes
CROSS JOIN productos
WHERE clientes.edad > 40;

---EJERCICIO 12---
SELECT clientes.edad, productos.nombre AS producto, pedidos.cantidad
FROM clientes
CROSS JOIN pedidos
CROSS JOIN productos
WHERE pedidos.cantidad BETWEEN 1 AND 10 AND productos.nombre = 'Zapatos'
ORDER BY pedidos.cantidad ASC;

---EJERCICIO 13---
SELECT c1.nombre AS cliente_1, c1.ciudad AS ciudad_1, c2.nombre AS cliente_2, c1.ciudad AS ciudad_2
FROM clientes AS c1 
CROSS JOIN clientes AS c2
WHERE c1.ciudad != c2.ciudad;

---EJERCICIO 14---
SELECT clientes.nombre AS clientes, productos.nombre AS productos, pedidos.cantidad
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad % 2 = 0;

---EJERCICIO 15---
SELECT clientes.ciudad, productos.nombre AS producto
FROM clientes
CROSS JOIN productos
WHERE productos.nombre LIKE 'C%'; 

---EJERCICIO 16---
SELECT clientes.nombre AS cliente, productos.nombre AS producto, pedidos.cantidad, productos.precio_unitario * pedidos.cantidad AS precio
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad BETWEEN 1 AND 10
ORDER BY producto ASC;

---EJERCICIO 17---
SELECT c.nombre AS nombre, e.edad AS edades
FROM clientes c
CROSS JOIN clientes e
ORDER BY c.nombre ASC;

---EJERCICIO 18---
SELECT clientes.ciudad, productos.nombre AS producto, pedidos.cantidad
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad > 5;

---EJERCICIO 20---
SELECT clientes.nombre AS cliente,
productos.nombre AS producto,
productos.precio_unitario,
pedidos.cantidad,
productos.precio_unitario * pedidos.cantidad AS precio_total
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE productos.precio_unitario * pedidos.cantidad > 100000.00;

---EJERCICIO 21---
SELECT clientes.nombre AS cliente,productos.nombre AS producto
FROM clientes
CROSS JOIN productos
WHERE clientes.nombre LIKE 'A%';

---EJERCICIO 22---
SELECT clientes.nombre AS cliente,
productos.nombre AS producto,
productos.precio_unitario AS precio_original,
productos.precio_unitario * 0.15 AS precio_aumento
FROM clientes
CROSS JOIN productos;

---EJERCICIO 23---
SELECT clientes.nombre AS clientes,
AVG(pedidos.cantidad) AS promedio_cantidad
FROM clientes
CROSS JOIN pedidos
GROUP BY clientes.nombre,pedidos.cliente_id
HAVING AVG(pedidos.cantidad) > 1.8;

---EJERCICIO 24---
SELECT clientes.nombre AS clientes, 
productos.nombre AS producto,
pedidos.cantidad,
productos.precio_unitario * pedidos.cantidad AS precio_total
FROM clientes
CROSS JOIN productos
CROSS JOIN pedidos
WHERE pedidos.cantidad BETWEEN 1 AND 5;

---EJERCICIO 25---
SELECT c1.nombre, c2.ciudad
FROM clientes c1
CROSS JOIN clientes c2
WHERE c1.ciudad != c2.ciudad;

---EJERCICIO 26---
SELECT clientes.nombre AS cliente,
clientes.edad,
productos.nombre AS producto,
productos.precio_unitario
FROM clientes
CROSS JOIN productos
WHERE productos.precio_unitario > 50000.00 AND clientes.edad > 30;

---EJERCICIO 27---
SELECT clientes.nombre AS cliente,
productos.nombre AS producto,
productos.precio_unitario * 10 AS total_vendido
FROM clientes
CROSS JOIN productos;

---EJERCICIO 28---
SELECT clientes.nombre AS cliente,
productos.nombre AS producto,
productos.precio_unitario
FROM clientes
CROSS JOIN productos
WHERE productos.precio_unitario >= 20000.00;

---EJERCICIO 29---
SELECT clientes.nombre AS clientes,
productos.nombre AS producto,
productos.precio_unitario AS precio_normal,
productos.precio_unitario * 0.19 AS precio_IVA
FROM clientes
CROSS JOIN productos;

---EJERCICIO 30---
SELECT clientes.nombre AS clientes,
clientes.ciudad,
productos.nombre AS productos
FROM clientes
CROSS JOIN productos
WHERE clientes.ciudad != 'Bogotá';