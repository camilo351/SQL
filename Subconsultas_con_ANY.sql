-- Tabla de clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    ciudad VARCHAR(50)
);

-- Tabla de productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50),
    stock INT NOT NULL
);

-- Tabla de pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    producto_id INT NOT NULL,
    fecha DATE NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

-- Datos para la tabla de clientes
INSERT INTO clientes (nombre, edad, ciudad) VALUES
('Juan Pérez', 25, 'Bogotá'),
('María López', 32, 'Medellín'),
('Carlos Gómez', 40, 'Cali'),
('Ana Ruiz', 28, 'Bogotá'),
('Sofía Martínez', 22, 'Cartagena');

-- Datos para la tabla de productos
INSERT INTO productos (nombre, precio_unitario, categoria, stock) VALUES
('Laptop', 1200.00, 'Electrónica', 15),
('Teclado', 25.00, 'Electrónica', 50),
('Monitor', 200.00, 'Electrónica', 10),
('Mouse', 15.00, 'Electrónica', 100),
('Escritorio', 150.00, 'Muebles', 5),
('Silla', 85.00, 'Muebles', 8);

-- Datos para la tabla de pedidos
INSERT INTO pedidos (cliente_id, producto_id, fecha, cantidad) VALUES
(1, 1, '2024-12-01', 1),
(2, 2, '2024-12-15', 2),
(3, 3, '2025-01-10', 1),
(4, 1, '2025-01-08', 1),
(5, 5, '2025-01-03', 1),
(1, 4, '2025-01-05', 3),
(2, 6, '2025-01-06', 2);

---EJERCICIO 1---
SELECT nombre AS productos, precio_unitario
FROM productos
WHERE precio_unitario > ANY(
     SELECT precio_unitario
	 FROM productos
	 WHERE stock > 0
);

---EJERCICIO 2---
SELECT *
FROM clientes
WHERE 


---EJERCICIO 3---
SELECT *
FROM productos
WHERE producto_id = ANY (
     SELECT producto_id
	 FROM pedidos
	 WHERE cliente_id = ANY (
          SElECT cliente_id
		  FROM clientes
		  WHERE ciudad = 'Bogotá')
);

---EJERCICIO 4---
SELECT nombre AS cliente, edad
FROM clientes
WHERE edad < ANY (
     SELECT edad
	 FROM clientes
);

---EJERCICIO 5---
SELECT * 
FROM pedidos
WHERE producto_id = ANY (
     SELECT producto_id
	 FROM productos
	 WHERE precio_unitario > ANY (
           SELECT precio_unitario
		   FROM productos
		   WHERE categoria = 'Electrónica')
);


---EJERCICIO 6---
SELECT nombre
FROM clientes
WHERE cliente_id = ANY  (
     SELECT cliente_id
	 FROM pedidos
	 WHERE producto_id = ANY (
          SELECT producto_id
		  FROM productos
		  WHERE stock < 10)
);


---EJERCICIO 7---
SELECT nombre AS productos
FROM productos
WHERE precio_unitario > ANY (
     SELECT producto_id, EXTRACT (MONTH FROM - INTERVAL '1 month')
	 FROM pedidos 
);

---EJERCICIO 8---

