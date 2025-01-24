---TABLA CLIENTES---
CREATE TABLE Clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
ciudad VARCHAR (100),
fecha_registro DATE
);

---DATOS CLIENTES---
INSERT INTO Clientes (nombre, ciudad, fecha_registro)
VALUES
('Mario','Medellín','2024-12-24'),
('Andres','Medellín','2025-01-02'),
('Dario', 'Medellín', '2025-01-20'),
('Salome', 'Barranquilla', '2024-10-16'),
('Carlos', 'Bogotá', '2024-11-30');



---TABLA PRODUCTOS---
CREATE TABLE Productos (
producto_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
categoria VARCHAR (100),
precio_unitario NUMERIC (2),
costo NUMERIC (2)
);

---DATOS PRODUCTOS---
INSERT INTO Productos (nombre, categoria, precio_unitario, costo) 
VALUES
('Laptop Dell', 'Electrónica', 1200.50, 1000.00),
('Mouse Logitech', 'Accesorios', 25.99, 15.00),
('Teclado Razer', 'Accesorios', 45.00, 30.00),
('Monitor LG', 'Electrónica', 200.75, 150.00),
('Impresora HP', 'Electrónica', 150.00, 100.00),
('Auriculares Sony', 'Accesorios', 85.50, 60.00),
('Cámara Canon', 'Electrónica', 500.00, 400.00),
('Router TP-Link', 'Electrónica', 75.25, 50.00),
('Memoria USB Kingston', 'Almacenamiento', 15.99, 10.00);



---TABLA PEDIDOS---
CREATE TABLE Pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto_id INT,
cantidad INT,
fecha_pedido DATE
);
---DATOS PEDIDOS---
INSERT INTO Pedidos (cliente_id, producto_id, cantidad, fecha_pedido)
VALUES
(1,2,4,'2025-01-02'),
(2,1,3,'2024-12-31'),
(2,4,2,'2025-01-02'),
(4,3,1,'2024-01-03'),
(5,2,1,'2024-12-29'),
(7,5,10,'2025-01-20');




---TABLA EMPLEADOS---
CREATE TABLE Empleados (
empleado_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
departamento VARCHAR (100),
salario NUMERIC (2)
);

---DATOS EMPLEADOS---
INSERT INTO Empleados (nombre, departamento, salario)
VALUES 
('Camilo', 'Ventas', 2000.00),
('Melany', 'Diseño', 2000.00),
('Geraldine', 'Sistemas', 3000.00),
('Carlos', 'Construccion', 2000.00),
('Ruben', 'Ventas', 2000.00),
('Manuel', 'Comerciante', 3000.00);

SELECT * FROM Empleados;
SELECT * FROM Pedidos;
SELECT * FROM Productos;
SELECT * FROM Clientes;

---EJERCICIO 1---
SELECT nombre, categoria, precio_unitario,
      ROW_NUMBER () OVER( PARTITION BY precio_unitario ORDER BY precio_unitario DESC) AS num_fila
FROM Productos;

---EJERCICIO 2---
SELECT nombre, ciudad, fecha_registro,
      ROW_NUMBER () OVER (PARTITION BY fecha_registro ORDER BY fecha_registro ASC) AS num_fila
FROM Clientes;

---EJERCICIO 3---
SELECT 
p.categoria AS categoria,
p.nombre AS productos,
SUM (o.cantidad) AS cantidad_vendidas,
ROW_NUMBER () OVER (PARTITION BY p.categoria ORDER BY SUM(o.cantidad) DESC) AS num_fila
FROM productos p
INNER JOIN pedidos o
ON p.producto_id = o.producto_id
GROUP BY p.categoria, p.nombre
ORDER BY p.categoria, num_fila;

---EJERCICIO 4---
SELECT
c.nombre AS clientes,
c.ciudad,
p.cantidad AS cantidad_pedida,
ROW_NUMBER () OVER (PARTITION BY c.nombre ORDER BY p.fecha_pedido DESC) AS num_fila
FROM clientes c
FULL OUTER JOIN pedidos p
ON c.cliente_id = p.cliente_id
ORDER BY c.nombre, num_fila;

---EJERCICIO 5---
SELECT
nombre AS empleado,
departamento,
salario,
ROW_NUMBER () OVER (PARTITION BY nombre ORDER BY salario DESC) AS num_fila
FROM Empleados
ORDER BY salario DESC;

---EJERCICIO 6---
SELECT 
c.nombre AS clientes,
c.ciudad,
SUM (p.cantidad * pr.precio_unitario) AS precio_total,
ROW_NUMBER () OVER (ORDER BY SUM (p.cantidad * pr.precio_unitario) DESC) AS ranking
FROM pedidos p
INNER JOIN clientes c
ON p.cliente_id = c.cliente_id 
INNER JOIN productos pr
ON p.producto_id = pr.producto_id
GROUP BY c.nombre, c.ciudad
ORDER BY ranking;

---EJERCICIO 7---

-- Tabla de clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100)
);

INSERT INTO clientes (nombre, ciudad) VALUES
('Juan Pérez', 'Bogotá'),
('María Gómez', 'Medellín'),
('Carlos López', 'Cali'),
('Ana Ramírez', 'Barranquilla'),
('Laura Martínez', 'Cartagena');

-- Tabla de pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    fecha_pedido DATE,
    precio_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido, precio_total) VALUES
(1, 1, 2, '2025-01-15', 160000.00),
(2, 3, 1, '2025-01-16', 1500000.00),
(3, 2, 4, '2025-01-17', 160000.00),
(1, 5, 1, '2025-01-18', 200000.00),
(4, 4, 1, '2025-01-18', 2200000.00);

-- Tabla de productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(100),
    precio_unitario DECIMAL(10, 2)
);

INSERT INTO productos (nombre, categoria, precio_unitario) VALUES
('Zapatos', 'Ropa', 80000.00),
('Camisa', 'Ropa', 40000.00),
('Smartphone', 'Electrónica', 1500000.00),
('Televisor', 'Electrónica', 2200000.00),
('Cafetera', 'Hogar', 200000.00);

-- Tabla de empleados
CREATE TABLE empleados (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha_contratacion DATE
);

INSERT INTO empleados (nombre, fecha_contratacion) VALUES
('Pedro García', '2020-03-15'),
('Sofía Martínez', '2018-07-12'),
('Luis Fernández', '2021-11-20'),
('Marta Rodríguez', '2019-06-05'),
('Diego López', '2023-01-25');

-- Tabla de estudiantes
CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    curso VARCHAR(100),
    calificacion DECIMAL(5, 2)
);


INSERT INTO estudiantes (nombre, curso, calificacion) VALUES
('Clara Pérez', 'Matemáticas', 95.00),
('Tomás Ramírez', 'Física', 88.50),
('Mariana Fernández', 'Química', 92.00),
('Juan Rodríguez', 'Biología', 85.75),
('Luisa Gómez', 'Computación', 97.50);

-- Tabla de películas
CREATE TABLE peliculas (
    pelicula_id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(100),
    calificacion DECIMAL(3, 1)
);

INSERT INTO peliculas (titulo, genero, calificacion) VALUES
('El Señor de los Anillos', 'Fantasía', 9.5),
('Matrix', 'Ciencia Ficción', 9.0),
('Titanic', 'Drama', 8.7),
('Toy Story', 'Animación', 9.2),
('Avatar', 'Ciencia Ficción', 8.9);

-- Tabla de libros
CREATE TABLE libros (
    libro_id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ejemplares_vendidos INT
);

INSERT INTO libros (titulo, autor, ejemplares_vendidos) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 50000000),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 20000000),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 120000000),
('El Principito', 'Antoine de Saint-Exupéry', 100000000),
('Orgullo y Prejuicio', 'Jane Austen', 30000000);

-- Tabla de pagos
CREATE TABLE pagos (
    pago_id SERIAL PRIMARY KEY,
    cliente_id INT,
    fecha_pago DATE,
    monto DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO pagos (cliente_id, fecha_pago, monto) VALUES
(1, '2025-01-20', 50000.00),
(2, '2025-01-21', 100000.00),
(3, '2025-01-22', 200000.00),
(4, '2025-01-23', 300000.00),
(5, '2025-01-24', 400000.00);

-- Tabla de soporte técnico
CREATE TABLE tickets_soporte (
    ticket_id SERIAL PRIMARY KEY,
    prioridad VARCHAR(50),
    fecha_creacion DATE,
    descripcion TEXT
);

INSERT INTO tickets_soporte (prioridad, fecha_creacion, descripcion) VALUES
('Alta', '2025-01-15', 'Error al iniciar sesión'),
('Media', '2025-01-16', 'Problema con el pago'),
('Baja', '2025-01-17', 'Consulta sobre producto'),
('Alta', '2025-01-18', 'Fallo en la entrega'),
('Media', '2025-01-19', 'Actualización pendiente');


---EJERCICIO 1---
SELECT nombre, categoria, precio_unitario,
ROW_NUMBER() OVER (PARTITION BY categoria ORDER BY precio_unitario DESC) AS numero_fila
FROM productos;

---EJERCICIO 2---
SELECT c.nombre AS clientes, c.ciudad, p.fecha_pedido,
ROW_NUMBER() OVER (PARTITION BY p.cliente_id ORDER BY p.fecha_pedido ASC) AS numero_fila
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id;

---EJERCICIO 3---
SELECT c.nombre AS clientes, c.ciudad, 
SUM (pr.precio_unitario * p.cantidad) AS total_pagar,
ROW_NUMBER() OVER (PARTITION BY SUM (pr.precio_unitario * p.cantidad) ORDER BY pr.precio_unitario * p.cantidad DESC)
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id
INNER JOIN productos pr ON p.producto_id = pr.producto_id
GROUP BY c.nombre, c.ciudad, pr.precio_unitario, p.cantidad;

---EJERCICIO 4---
SELECT nombre, fecha_contratacion,
ROW_NUMBER() OVER (PARTITION BY fecha_contratacion ORDER BY fecha_contratacion ASC) AS numero_fila
FROM empleados;

---EJERCICIO 5---
SELECT nombre, curso, calificacion,
ROW_NUMBER() OVER (PARTITION BY calificacion ORDER BY calificacion DESC) AS numero_fila
FROM estudiantes;

---EJERCICIO 6---
SELECT titulo, genero, calificacion,
ROW_NUMBER() OVER (PARTITION BY genero ORDER BY calificacion DESC) AS numero_fila
FROM peliculas;

---EJERCICIO 7---
SELECT titulo, autor, ejemplares_vendidos,
ROW_NUMBER() OVER (PARTITION BY autor ORDER BY ejemplares_vendidos DESC) AS numero_fila
FROM libros;

---EJERCICIO 8---
SELECT c.nombre AS cliente, p.cliente_id, p.fecha_pago, p.monto,
ROW_NUMBER() OVER (PARTITION BY p.cliente_id ORDER BY p.fecha_pago ASC) AS numero_fila
FROM pagos p
INNER JOIN clientes c
ON p.cliente_id = c.cliente_id;

---EJERCICIO 9---
SELECT prioridad, fecha_creacion, descripcion,
ROW_NUMBER () OVER (PARTITION BY prioridad ORDER BY fecha_creacion DESC) AS numero_fila
FROM tickets_soporte;

---EJERCICIO 10---
SELECT c.nombre, c.ciudad, COUNT(p.cliente_id) AS cantidad_pagos,
ROW_NUMBER() OVER(ORDER BY p.cliente_id DESC) AS numero_fila
FROM clientes c
INNER JOIN pagos p
ON c.cliente_id = p.cliente_id
GROUP BY c.nombre, c.ciudad, p.cliente_id;

---EJERCICIO 11---
WITH maximo_gasto AS (
    SELECT c.nombre, c.ciudad, SUM(p.precio_total) AS precio_total
	FROM clientes c
    JOIN pedidos p
    ON c.cliente_id = p.cliente_id
	GROUP BY c.nombre, c.ciudad
)
SELECT nombre, ciudad, precio_total,
      ROW_NUMBER () OVER(ORDER BY precio_total DESC)
	  FROM maximo_gasto
	  LIMIT 3;

---EJERCICIO 12---
SELECT 
ROW_NUMBER() OVER(ORDER BY calificacion DESC) AS ranking,
titulo, genero, calificacion
FROM peliculas
LIMIT 5;

---EJERCICIO 13---
SELECT ROW_NUMBER()OVER(ORDER BY p.fecha_pedido DESC) AS ranking,
c.nombre,
p.fecha_pedido
FROM pedidos p
JOIN clientes c
ON p.cliente_id = c.cliente_id
LIMIT 3;

---EJERCICIO 14---
WITH productos_numerados AS (
    SELECT 
        categoria,
        nombre AS producto,
        precio_unitario,
        ROW_NUMBER() OVER (PARTITION BY categoria ORDER BY precio_unitario DESC) AS numero_fila
    FROM productos
)
SELECT
producto,
categoria, 
precio_unitario,
numero_fila
FROM productos_numerados
WHERE numero_fila <= 2;

---EJERCICIO 15---
SELECT
ROW_NUMBER() OVER (ORDER BY fecha_contratacion ASC),
nombre,
fecha_contratacion
FROM empleados
LIMIT 3;

---EJERCICIO 16---
WITH nota_numerada AS (
    SELECT nombre,
	curso,
	calificacion,
	ROW_NUMBER() OVER(PARTITION BY curso ORDER BY calificacion DESC) AS numero_fila
	FROM estudiantes
)
SELECT numero_fila, nombre, curso, calificacion
FROM nota_numerada
WHERE numero_fila < 2;

---EJERCICIO 17---
WITH tickets AS (
    SELECT prioridad,
	fecha_creacion,
	descripcion,
	ROW_NUMBER() OVER(PARTITION BY prioridad ORDER BY fecha_creacion ASC) AS numero_fila
	FROM tickets_soporte
)
SELECT numero_fila,prioridad, fecha_creacion,descripcion
FROM tickets
WHERE numero_fila <= 3;

---EJERCICIO 18---
WITH ventas_totales AS (
    SELECT p.producto_id,
	pr.nombre,
	SUM (p.cantidad) AS total_vendido
	FROM pedidos p
	JOIN productos pr
	ON p.producto_id = pr.producto_id
	GROUP BY p.producto_id, pr.nombre
)
SELECT nombre AS productos,
total_vendido,
ROW_NUMBER () OVER (ORDER BY total_vendido DESC) AS renking_global
FROM ventas_totales;

---EJERICICIO 19---
WITH ventas AS (
    SELECT c.nombre, c.ciudad, p.cliente_id, COUNT(p.cliente_id) AS pedidos_realizados
	FROM clientes c
	JOIN pedidos p
	ON c.cliente_id = p.cliente_id
	GROUP BY c.nombre, c.ciudad, p.cliente_id
)
SELECT nombre, ciudad, pedidos_realizados,
ROW_NUMBER () OVER (ORDER BY pedidos_realizados DESC) AS numero_fila
FROM ventas
WHERE pedidos_realizados <= 5;

---EJERCICIO 20---
WITH productos_distintos AS (
    SELECT
    p.cliente_id,
	c.nombre AS clientes,
	COUNT (DISTINCT p.producto_id) AS productos_unicos
	FROM pedidos p
	JOIN clientes c ON p.cliente_id = c.cliente_id
	GROUP BY p.cliente_id, c.nombre
)
SELECT clientes, productos_unicos,
ROW_NUMBER() OVER (ORDER BY productos_unicos DESC) AS ranking
FROM productos_distintos;

