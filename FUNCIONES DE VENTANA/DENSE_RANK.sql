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

INSERT INTO clientes (nombre, ciudad) VALUES
('Camilo Hernandez', 'Medellín');

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
SELECT nombre AS productos, precio_unitario,
DENSE_RANK()OVER(ORDER BY precio_unitario DESC) AS ranking_precio
FROM productos;

---EJERCICIO 2---
SELECT nombre AS productos, categoria, precio_unitario,
DENSE_RANK() OVER(PARTITION BY categoria ORDER BY precio_unitario DESC) AS rankig
FROM productos;

---EJERCICIO 3---
SELECT nombre, salario,
DENSE_RANK()OVER(ORDER BY salario DESC) AS ranking
FROM empleados;

---EJERCICIO 4---
SELECT ciudad, COUNT (cliente_id) AS numero_clientes,
DENSE_RANK()OVER(ORDER BY COUNT(cliente_id) DESC) AS ranking
FROM clientes
GROUP BY ciudad;

---EJERCICIO 5---
SELECT pr.categoria, SUM(p.cantidad) AS total_ventas,
DENSE_RANK()OVER( ORDER BY SUM(p.cantidad)DESC) AS ranking
FROM productos pr
INNER JOIN pedidos p
ON p.producto_id = pr.producto_id
GROUP BY pr.categoria;

---EJERCICIO 6---
WITH ranking_clientes AS (
    SELECT c.nombre,SUM(p.cantidad * pr.precio_unitario) AS total_gastado
	FROM pedidos p
	JOIN clientes c ON c.cliente_id = p.cliente_id
	JOIN productos pr ON pr.producto_id = p.producto_id
	GROUP BY c.nombre
)
SELECT nombre, total_gastado,
DENSE_RANK()OVER(ORDER BY total_gastado DESC) AS ranking
FROM ranking_clientes;

---EJERCICIO 7---
WITH ranking_fecha AS (
    SELECT 
	EXTRACT(MONTH FROM fecha_venta) AS Mes,
	SUM (cantidad) AS cantidad
	FROM ventas
	GROUP BY EXTRACT(MONTH FROM fecha_venta)  
)
SELECT Mes, cantidad, 
DENSE_RANK()OVER(ORDER BY cantidad DESC) AS ranking
FROM ranking_fecha;


---EJERCICIO 8---
SELECT pr.categoria,pr.nombre AS productos, SUM(v.cantidad) AS cantidad_total,
DENSE_RANK()OVER(PARTITION BY pr.categoria ORDER BY SUM(v.cantidad) DESC) AS ranking
FROM productos pr
JOIN ventas v
ON pr.producto_id = v.producto_id
GROUP BY pr.categoria, pr.nombre;

---EJERCICIO 9---
SELECT fecha_pedido, SUM(cantidad) AS total_pedido,
DENSE_RANK()OVER(ORDER BY SUM(cantidad)DESC) AS ranking
FROM pedidos
GROUP BY fecha_pedido;

---EJERCICIO 10---
SELECT prioridad, COUNT(prioridad) AS cantidad_total,
DENSE_RANK()OVER(ORDER BY COUNT(prioridad)DESC) AS ranking
FROM tickets_soporte
GROUP BY prioridad;

---EJERCICIO 11---
WITH ranking_clientes AS (
    SELECT c.nombre AS clientes, SUM(pr.precio_unitario * p.cantidad) AS ingresos_generados
	FROM pedidos p
	INNER JOIN productos pr ON p.producto_id = pr.producto_id
	INNER JOIN clientes c ON c.cliente_id = p.cliente_id
	GROUP BY c.nombre
)
SELECT clientes, ingresos_generados,
DENSE_RANK()OVER(ORDER BY ingresos_generados DESC) AS rankig
FROM ranking_clientes;

---EJERCICIO 12---
SELECT pr.nombre, pr.categoria, SUM(v.cantidad) AS total_ventas,
DENSE_RANK()OVER(PARTITION BY pr.categoria ORDER BY SUM(v.cantidad) DESC) AS ranking
FROM productos pr
JOIN ventas v
ON pr.producto_id = v.producto_id
GROUP BY pr.nombre, pr.categoria;

---EJERCICIO 13---
SELECT c.ciudad, pr.nombre, SUM(p.cantidad) AS cantidad_vendida,
DENSE_RANK()OVER(ORDER BY SUM(p.cantidad) DESC) AS ranking
FROM pedidos p
INNER JOIN clientes c ON c.cliente_id = p.cliente_id
INNER JOIN productos pr ON pr.producto_id = p.producto_id
GROUP BY c.ciudad, pr.nombre;

---EJERCICIO 14---
SELECT nombre, fecha_contratacion, salario,
DENSE_RANk()OVER(ORDER BY fecha_contratacion ASC) AS ranking_fecha
FROM empleados;

---EJERCICIO 15---
SELECT c.ciudad, SUM(p.cantidad) AS total_ventas,
DENSE_RANK()OVER(ORDER BY SUM(p.cantidad) DESC) AS ranking
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.ciudad;

---EJERCICIO 16---
SELECT categoria, nombre, precio_unitario,
DENSE_RANK()OVER(PARTITION BY categoria ORDER BY precio_unitario DESC) AS ranking
FROM productos;

---EJERCICIO 17---
SELECT c.nombre AS clientes, COUNT(p.cliente_id)  AS pedidos_realizados,
DENSE_RANK()OVER(ORDER BY COUNT(p.cliente_id)DESC) AS ranking
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.nombre;

---EJERCICIO 18---
WITH ranking_fecha AS (
    SELECT fecha_pedido, SUM(p.cantidad * pr.precio_unitario) AS total_ingresos
    FROM pedidos p
    INNER JOIN productos pr
    ON p.producto_id = pr.producto_id
    GROUP BY fecha_pedido
)
SELECT fecha_pedido, total_ingresos,
DENSE_RANK()OVER(ORDER BY total_ingresos DESC) AS ranking
FROM ranking_fecha;

---EJERCICIO 19---
SELECT prioridad, COUNT(ticket_id) AS cantidad_tickets,
DENSE_RANK()OVER(ORDER BY COUNT(ticket_id) DESC) AS ranking
FROM tickets_soporte
GROUP BY prioridad;

