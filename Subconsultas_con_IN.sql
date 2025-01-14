-- Tabla: clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    edad INT
);

-- Tabla: productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    precio_unitario DECIMAL(10, 2),
    stock INT
);

-- Tabla: pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT,
    fecha DATE
);
-- Insertar datos en clientes
INSERT INTO clientes (nombre, ciudad, edad) VALUES
('Juan Pérez', 'Bogotá', 30),
('María Gómez', 'Medellín', 25),
('Carlos Sánchez', 'Cali', 40),
('Ana Torres', 'Bogotá', 35);

-- Insertar datos en productos
INSERT INTO productos (nombre, precio_unitario, stock) VALUES
('Laptop', 2500.00, 10),
('Mouse', 25.00, 50),
('Teclado', 45.00, 30),
('Monitor', 150.00, 20);

-- Insertar datos en pedidos
INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha) VALUES
(1, 1, 2, '2025-01-01'),
(1, 2, 1, '2025-01-03'),
(2, 1, 1, '2025-01-02'),
(3, 3, 1, '2025-01-04'),
(4, 4, 1, '2025-01-05');


---EJERCICIO 1---
SELECT nombre AS prodictos
FROM productos pr
WHERE producto_id IN(
     SELECT producto_id
	 FROM pedidos p1
	 INNER JOIN clientes c
	 ON p1.cliente_id = c.cliente_id
	 WHERE c.ciudad = 'Bogotá'
);

---EJERCICIO 2---
SELECT nombre AS clientes
FROM clientes c
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos p1
	 INNER JOIN productos pr
	 ON p1.producto_id = pr.producto_id
	 WHERE pr.nombre = 'Laptop'
);

---EJERCICIO 3---
SELECT nombre AS productos
FROM productos pr
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos p1
	 INNER JOIN clientes c
	 ON p1.cliente_id = c.cliente_id
	 WHERE c.edad < 30
);

---EJERCICIO 4---
SELECT nombre AS clientes
FROM clientes c
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos p1
	 INNER JOIN productos p
	 ON p1.producto_id = p.producto_id
	 WHERE p1.producto_id = p.producto_id 
	 GROUP BY p1.cliente_id
	 HAVING COUNT(p1.cliente_id) > 1	 
);

---EJERCICIO 5---
SELECT nombre AS clientes
FROM clientes c
WHERE cliente_id NOT IN(
      SELECT cliente_id
	  FROM pedidos p1
	  INNER JOIN productos pr
	  ON p1.producto_id = pr.producto_id
	  WHERE pr.stock = 0
);

---EJERCICIO 6---
SELECT nombre AS productos
FROM productos pr
WHERE producto_id NOT IN(
     SELECT producto_id
	 FROM pedidos p
	 WHERE p.producto_id = pr.producto_id
);

---EJERCICIO 7---
SELECT nombre AS clientes
FROM clientes c
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos
	 WHERE fecha >= CURRENT_DATE - INTERVAL '7' DAY
);

---EJERCICIO 8---
SELECT nombre AS producto
FROM productos pr
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos p
	 WHERE cliente_id IN(
          SELECT cliente_id
		  FROM clientes c
		  WHERE c.ciudad = 'Medellín')
);

---EJERCICIO 9---
SELECT nombre AS producto
FROM productos p1
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos pe
	 WHERE p1.precio_unitario > (
          SELECT AVG(precio_unitario)
		  FROM productos)
		  AND pe.producto_id = p1.producto_id
);

---EJERCICIO 10---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos
	 WHERE producto_id IN(
          SELECT producto_id
		  FROM productos
		  WHERE precio_unitario < 50.00)
);

---	EJERCICIO 11---
SELECT nombre AS productos
FROM productos
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos
	 WHERE cliente_id IN(
          SELECT cliente_id
		  FROM clientes
		  WHERE edad > 35)
);

---EJERCICIO 12---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id NOT IN(
     SELECT cliente_id
	 FROM pedidos
	 WHERE EXTRACT(MONTH FROM fecha) = 1
);

---EJERCICIO 13---
SELECT nombre AS productos
FROM productos
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos
	 WHERE productos.nombre = 'Monitor'
);

---EJERCICIO 14---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos p1
	 GROUP BY cliente_id, fecha
	 HAVING COUNT(*) > 1
);

---EJERCICIO 15---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id NOT IN (
     SELECT cliente_id
	 FROM pedidos
	 WHERE producto_id  IN (
          SELECT producto_id
		  FROM productos
		  WHERE nombre IN ('Laptop', 'Teclado'))
);

---EJERCICIO 16---
SELECT nombre AS productos
FROM productos
WHERE producto_id IN(
     SELECT producto_id
	 FROM pedidos
	 WHERE cliente_id IN (
          SELECT cliente_id
		  FROM clientes
		  WHERE ciudad = 'Cali')
);

---EJERCICIO 17---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos
	 WHERE producto_id IN (
		  SELECT producto_id
		  FROM productos
		  WHERE stock = 0)
);

---EJERCICIO 18---
SELECT nombre AS productos
FROM productos
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos
	 WHERE cliente_id IN (
          SELECT cliente_id
		  FROM clientes
		  ORDER BY edad ASC
		  LIMIT 3)
);

---EJERCICIO 19---
SELECT nombre AS clientes
FROM clientes
WHERE cliente_id IN (
     SELECT cliente_id
	 FROM pedidos pe
	 INNER JOIN productos pr
	 ON pe.producto_id = pr.producto_id
	 WHERE pr.precio_unitario < (
	      SELECT AVG(precio_unitario)
	      FROM productos)
);

---EJERCICIO 20---
SELECT DISTINCT nombre AS producto
FROM productos
WHERE producto_id IN (
     SELECT producto_id
	 FROM pedidos p1
	 GROUP BY producto_id, fecha
     HAVING COUNT(DISTINCT cliente_id) > 1
);