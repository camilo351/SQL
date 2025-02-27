CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio_unitario DECIMAL(10, 2)
);

INSERT INTO productos (nombre, categoria, precio_unitario) VALUES
('Laptop', 'Electrónica', 1000),
('Televisor', 'Electrónica', 500),
('Tablet', 'Electrónica', 500),
('Audífonos', 'Electrónica', 200),
('Refrigerador', 'Electrodomésticos', 800),
('Horno', 'Electrodomésticos', 400),
('Licuadora', 'Electrodomésticos', 150),
('Cama', 'Muebles', 700),
('Sofá', 'Muebles', 1000),
('Mesa', 'Muebles', 300);

CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
);

INSERT INTO clientes (nombre, ciudad) VALUES
('Juan Pérez', 'Bogotá'),
('María López', 'Medellín'),
('Carlos Sánchez', 'Cali'),
('Ana Gómez', 'Cartagena'),
('Laura Torres', 'Barranquilla');

CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT,
    fecha_pedido DATE
);

INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 1, 2, '2025-01-01'), -- Juan Pérez compra 2 laptops
(1, 4, 1, '2025-01-03'), -- Juan Pérez compra 1 audífonos
(2, 2, 1, '2025-01-05'), -- María López compra 1 televisor
(2, 3, 3, '2025-01-07'), -- María López compra 3 tablets
(3, 5, 1, '2025-01-10'), -- Carlos Sánchez compra 1 refrigerador
(3, 7, 2, '2025-01-12'), -- Carlos Sánchez compra 2 licuadoras
(4, 8, 1, '2025-01-15'), -- Ana Gómez compra 1 cama
(4, 9, 1, '2025-01-18'), -- Ana Gómez compra 1 sofá
(5, 10, 4, '2025-01-20'); -- Laura Torres compra 4 mesas

CREATE TABLE empleados (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    fecha_contratacion DATE,
    salario DECIMAL(10, 2)
);

INSERT INTO empleados (nombre, fecha_contratacion, salario) VALUES
('Pedro Herrera', '2020-01-15', 2000),
('Luisa Morales', '2019-06-10', 2500),
('Andrea Ríos', '2021-08-25', 1800),
('Sofía Martínez', '2018-04-30', 2700),
('Miguel Díaz', '2022-03-05', 1500);

CREATE TABLE ventas (
    venta_id SERIAL PRIMARY KEY,
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT,
    fecha_venta DATE
);

INSERT INTO ventas (producto_id, cantidad, fecha_venta) VALUES
(1, 10, '2025-01-01'), -- 10 laptops vendidas
(2, 5, '2025-01-02'), -- 5 televisores vendidos
(3, 8, '2025-01-03'), -- 8 tablets vendidas
(4, 20, '2025-01-04'), -- 20 audífonos vendidos
(5, 6, '2025-01-05'), -- 6 refrigeradores vendidos
(6, 7, '2025-01-06'), -- 7 hornos vendidos
(7, 15, '2025-01-07'), -- 15 licuadoras vendidas
(8, 3, '2025-01-08'), -- 3 camas vendidas
(9, 2, '2025-01-09'), -- 2 sofás vendidos
(10, 12, '2025-01-10'); -- 12 mesas vendidas

CREATE TABLE tickets_soporte (
    ticket_id SERIAL PRIMARY KEY,
    prioridad VARCHAR(20),
    fecha_creacion DATE,
    descripcion TEXT
);

INSERT INTO tickets_soporte (prioridad, fecha_creacion, descripcion) VALUES
('Alta', '2025-01-01', 'Problema con la conexión a internet'),
('Media', '2025-01-02', 'Actualización de software'),
('Alta', '2025-01-03', 'Servidor caído'),
('Baja', '2025-01-04', 'Consulta sobre configuración'),
('Media', '2025-01-05', 'Error en el sistema de tickets'),
('Alta', '2025-01-06', 'Pérdida de datos en el sistema'),
('Baja', '2025-01-07', 'Cambio de contraseña'),
('Media', '2025-01-08', 'Problema con la impresión de reportes'),
('Alta', '2025-01-09', 'Base de datos no accesible'),
('Baja', '2025-01-10', 'Asesoría sobre nuevas funcionalidades');


---EJERCICIO 1---
SELECT nombre, categoria, precio_unitario,
RANK () OVER (ORDER BY precio_unitario DESC) AS ranking
FROM productos

---EJERCICIO 2---
WITH ranking_pedidos  AS (
    SELECT c.nombre AS clientes, COUNT(p.cliente_id) AS cantidad_pedidos
	FROM clientes c
	JOIN pedidos p
	ON c.cliente_id = p.cliente_id
	GROUP BY c.nombre
)
SELECT clientes, cantidad_pedidos, RANK () OVER(ORDER BY cantidad_pedidos DESC)
FROM ranking_pedidos;

---EJERCICIO 3---
SELECT  categoria, SUM(precio_unitario) AS precio_total,
RANK() OVER(ORDER BY SUM(precio_unitario) DESC) AS ranking
FROM productos
GROUP BY categoria
ORDER BY ranking;

---EJERCICIO 4---
SELECT nombre, fecha_contratacion, salario,
RANK() OVER(ORDER BY salario DESC)
FROM empleados;

---EJERCICIO 5---
WITH ranking_producto AS (
    SELECT p.nombre AS producto, p.categoria, p.precio_unitario,
	COUNT(v.cantidad) AS total_cantidad
	FROM productos p
	JOIN ventas v
	ON p.producto_id = v.producto_id
	GROUP BY p.nombre, p.categoria, p.precio_unitario
)
SELECT producto, categoria, precio_unitario, total_cantidad,
RANK() OVER(ORDER BY total_cantidad DESC) AS ranking
FROM ranking_producto;

---EJERCICIO 6---
SELECT
       pr.categoria, 
	   SUM(p.cantidad) AS total_ventas,
       RANK()OVER( ORDER BY SUM(p.cantidad) DESC) AS ranking
FROM productos pr
JOIN pedidos p
ON pr.producto_id = p.producto_id
GROUP BY pr.categoria
ORDER BY ranking;

---EJERCICIO 7---
WITH ranking_producto AS (
    SELECT
      c.nombre AS clientes,
	  SUM (p.cantidad * pr.precio_unitario) AS total_gastado
	  FROM pedidos p
	  INNER JOIN clientes c ON p.cliente_id = c.cliente_id
	  INNER JOIN productos pr ON p.producto_id = pr.producto_id
	  GROUP BY c.nombre
) 
SELECT clientes, total_gastado, 
RANK() OVER(ORDER BY total_gastado DESC)
FROM ranking_producto;

---EJERCICIO 8---
SELECT 
     prioridad,
	 fecha_creacion, 
	 descripcion,
	 RANK() OVER(PARTITION BY prioridad ORDER BY fecha_creacion DESC)
FROM tickets_soporte;

---EJERCICIO 9---
SELECT
     pr.nombre AS productos,
	 pr.categoria,
	 COUNT(p.producto_id) AS mas_vendidos,
	 RANK() OVER(PARTITION BY categoria ORDER BY COUNT(p.producto_id)) AS ranking
	 FROM productos pr
	 JOIN pedidos p
	 ON pr.producto_id = p.producto_id
	 GROUP BY pr.nombre, pr.categoria;

---EJERCICIO 10---
SELECT ciudad,
COUNT (cliente_id) AS total_cliente,
RANK() OVER (ORDER BY COUNT(cliente_id) DESC)AS Ranking
FROM clientes
GROUP BY ciudad
ORDER BY Ranking;

---EJERCICIO 11---
WITH salario_maximo AS (
    SELECT nombre, salario, RANK()OVER(ORDER BY salario DESC) AS mejores_salarios
	FROM empleados
)
SELECT nombre, salario, mejores_salarios
FROM salario_maximo
WHERE mejores_salarios <= 3;

---EJERCICIO 12---
SELECT 
    pr.nombre, 
	SUM (v.cantidad) AS total_ventas, 
	v.fecha_venta,
	RANK() OVER(PARTITION BY v.fecha_venta ORDER BY SUM(v.cantidad) DESC) AS ranking
	FROM productos pr
	INNER JOIN ventas v
	ON pr.producto_id = v.producto_id
	GROUP BY pr.nombre, v.fecha_venta;

---EJERCICIO 13---
WITH ranking_fecha AS (
    SELECT v.fecha_venta, SUM(p.precio_unitario * v.cantidad) AS total_ventas
	FROM ventas v
	JOIN productos p
	ON v.producto_id = p.producto_id
    GROUP BY v.fecha_venta
)
SELECT fecha_venta, total_ventas,
      RANK()OVER(ORDER BY total_ventas DESC) AS ranking
	  FROM ranking_fecha;

---EJERCICIO 14---
WITH ranking_clientes AS (
    SELECT c.nombre AS clientes, COUNT(DISTINCT p.producto_id) AS producto_distinto
	FROM pedidos p
	JOIN clientes c
	ON p.cliente_id = c.cliente_id
	GROUP BY c.nombre
)
SELECT clientes, producto_distinto,
RANK()OVER(ORDER BY producto_distinto DESC) AS ranking
FROM ranking_clientes;

---EJERCICIO 15---
SELECT c.nombre AS clientes, pr.nombre AS productos, SUM(p.cantidad) AS total_comprado,
RANK() OVER(ORDER BY SUM(p.cantidad) DESC) AS ranking
FROM pedidos p
JOIN productos pr ON p.producto_id = pr.producto_id
JOIN clientes c ON p.cliente_id = c.cliente_id
GROUP BY c.nombre, pr.nombre
;

---EJERCICIO 16---
SELECT nombre, precio_unitario, RANK()OVER(ORDER BY precio_unitario DESC) AS ranking
FROM productos
WHERE precio_unitario > 500;

---EJERCICIO 17---
SELECT c.ciudad, COUNT(p.cliente_id) AS total_pedidos,
RANK() OVER(ORDER BY COUNT(p.cliente_id)DESC) AS ranking
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.ciudad
ORDER BY ranking;

---EJERCICIO 18---
WITH ranking_fecha AS (
    SELECT c.nombre AS clientes,
	p.fecha_pedido,
	CURRENT_DATE - INTERVAL '1' MONTH AS ultimo_mes,
	SUM (p.cantidad) AS cantidad
	FROM clientes c
	INNER JOIN pedidos p
	ON c.cliente_id= p.cliente_id
	GROUP BY c.nombre, p.fecha_pedido
)
SELECT clientes, fecha_pedido, ultimo_mes, cantidad,
RANK()OVER(ORDER BY cantidad DESC) AS ranking
FROM ranking_fecha;

---EJERCICIO 19---
SELECT nombre, fecha_contratacion,
RANK()OVER(ORDER BY fecha_contratacion) AS ranking
FROM empleados
WHERE fecha_contratacion > '2020-01-01';

---EJERCICIO 20---
SELECT prioridad, fecha_creacion, 
RANK()OVER(ORDER BY fecha_creacion DESC) AS ranking
FROM tickets_soporte
WHERE prioridad = 'Alta'
LIMIT 3;
