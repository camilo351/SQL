-- Crear tabla clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    ciudad VARCHAR(100) NOT NULL
);

-- Insertar datos en la tabla clientes
INSERT INTO clientes (nombre, edad, ciudad) VALUES
('Juan Pérez', 25, 'Bogotá'),
('Ana Gómez', 32, 'Medellín'),
('Luis Martínez', 45, 'Cali'),
('María Torres', 29, 'Cartagena'),
('Pedro Ramírez', 35, 'Bogotá');

-- Crear tabla productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL
);

-- Insertar datos en la tabla productos
INSERT INTO productos (nombre, precio_unitario) VALUES
('Laptop', 2500000.00),
('Teléfono', 1200000.00),
('Audífonos', 150000.00),
('Monitor', 800000.00),
('Teclado', 50000.00);

-- Crear tabla pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(cliente_id),
    producto_id INT NOT NULL REFERENCES productos(producto_id),
    cantidad INT NOT NULL,
    fecha DATE NOT NULL
);

-- Insertar datos en la tabla pedidos
INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha) VALUES
(1, 1, 2, '2025-01-01'),
(2, 3, 5, '2025-01-02'),
(3, 2, 1, '2025-01-03'),
(4, 4, 3, '2025-01-04'),
(5, 5, 10, '2025-01-05');


---EJERCICIO 1---
SELECT nombre
FROM clientes 
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE clientes.cliente_id = pedidos.cliente_id
);

---EJERCICIO 2---
SELECT nombre
FROM productos
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE productos.producto_id = pedidos.producto_id
);

---EJERCICIO 3---
SELECT ciudad
FROM clientes
WHERE EXISTS (
      SELECT 1
      FROM pedidos
      WHERE cantidad > 10
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 4---
SELECT nombre
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN productos
	  ON pedidos.producto_id = productos.producto_id
	  WHERE pedidos.cantidad * productos.precio_unitario > 50000.00
	  AND pedidos.cliente_id = clientes.cliente_id
);


---EJERCICIO 5---
SELECT c1.nombre, c1.ciudad
FROM clientes c1
WHERE EXISTS (
      SELECT 1
	  FROM clientes
	  WHERE c1.ciudad = clientes.ciudad 
	  AND c1.nombre != clientes.nombre	  
);

---EJERCICIO 6---
SELECT p1.nombre, p1.precio_unitario
FROM productos p1
WHERE EXISTS (
    SELECT 1
    FROM productos p2
    WHERE p2.precio_unitario > (
        SELECT AVG(precio_unitario)
        FROM productos
    ) AND p1.precio_unitario = p2.precio_unitario
);

---EJERCICIO 7---
SELECT nombre
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN productos
	  ON pedidos.producto_id = productos.producto_id
	  WHERE productos.nombre LIKE 'A%'
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 8---
SELECT ciudad
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE cantidad > 5 
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 9---
SELECT nombre
FROM clientes
WHERE NOT EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 10---
SELECT nombre
FROM productos
WHERE NOT EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN clientes
	  ON pedidos.cliente_id = clientes.cliente_id
	  WHERE pedidos.producto_id = productos.producto_id
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 11---
SELECT nombre
FROM productos
WHERE EXISTS (
      SELECT p.nombre AS producto, COUNT(DISTINCT pe.cliente_id) AS cantidad_clientes
      FROM productos p
      INNER JOIN pedidos pe ON p.producto_id = pe.producto_id
      GROUP BY p.producto_id
      HAVING COUNT(DISTINCT pe.cliente_id) > 1
);

SELECT nombre
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE pedidos.fecha <  CURRENT_DATE - INTERVAL '30 days'
);

---EJERCICIO 13---
SELECT ciudad
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN productos
	  ON pedidos.producto_id = productos.producto_id
	  WHERE pedidos.cantidad * productos.precio_unitario > 100000.00
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 14---
SELECT nombre AS producto
FROM productos
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE cantidad > (
	        SELECT AVG(cantidad)
			FROM pedidos)
			AND pedidos.producto_id = productos.producto_id
);

---EJERCICIO 15---
SELECT nombre AS cliente
FROM clientes
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN productos
	  ON pedidos.producto_id = productos.producto_id
	  WHERE productos.precio_unitario > 50000.00
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 16---
SELECT nombre AS productos
FROM productos
WHERE NOT EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN clientes
	  ON pedidos.cliente_id = clientes.cliente_id
	  WHERE clientes.ciudad = 'Medellín'
	  AND pedidos.producto_id = productos.producto_id
);

---EJERCICIO 17---
SElECT c1.nombre AS cliente, c1.ciudad
FROM clientes c1
WHERE EXISTS (
      SELECT 1
	  FROM pedidos
	  INNER JOIN clientes AS c2
	  ON pedidos.cliente_id = c2.cliente_id
	  WHERE c1.ciudad = c2.ciudad
	  AND c1.cliente_id != pedidos.cliente_id
);

---EJERCICIO 18---
SELECT nombre AS productos
FROM productos
WHERE EXISTS(
      SELECT 1
	  FROM pedidos
	  INNER JOIN clientes
	  ON pedidos.cliente_id = clientes.cliente_id
	  WHERE clientes.edad > 25
	  AND pedidos.producto_id = productos.producto_id
);

---EJERCICIO 19---
SELECT nombre AS clientes
FROM clientes
WHERE NOT EXISTS (
      SELECT 1
	  FROM pedidos
	  WHERE fecha < CURRENT_DATE - INTERVAL '6'MONTH
	  AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 20---
SELECT nombre
FROM productos p
WHERE EXISTS (
    SELECT 1
    FROM pedidos pe
    WHERE pe.producto_id = p.producto_id
    GROUP BY pe.producto_id
    HAVING COUNT(DISTINCT pe.cliente_id) >= 3
);

---EJERCICIO 21---
SELECT nombre AS productos
FROM productos 
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 INNER JOIN clientes
	 ON pedidos.cliente_id = clientes.cliente_id
	 WHERE clientes.ciudad = 'Medellín'
	 AND pedidos.producto_id = productos.producto_id
);

---EJERCICIO 22---
SELECT nombre AS clientes
FROM clientes
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 INNER JOIN productos
	 ON pedidos.producto_id = productos.producto_id
	 WHERE pedidos.cantidad * productos.precio_unitario > 10000.00
	 AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 23---
SELECT p1.nombre AS productos
FROM productos p1
WHERE EXISTS(
     SELECT 1
	 FROM productos p2
	 WHERE p2.precio_unitario > (
	      SELECT AVG(precio_unitario)
		  FROM productos)
		  AND p2.producto_id = p1.producto_id
);

---EJERCICIO 24---
SELECT nombre AS productos
FROM productos
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 INNER JOIN clientes
	 ON pedidos.cliente_id = clientes.cliente_id
	 WHERE pedidos.producto_id = productos.producto_id
	 GROUP BY pedidos.producto_id
	 HAVING COUNT(DISTINCT pedidos.cliente_id) > 1 
);

---EJERCICIO 25---
SELECT nombre AS productos
FROM productos
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 WHERE pedidos.cantidad * productos.precio_unitario > 100000.00
	 AND pedidos.producto_id = productos.producto_id
);

---EJERCICIO 26---
SELECT DISTINCT ciudad 
FROM clientes
WHERE EXISTS(
     SELECT 1
	 FROM pedidos
	 WHERE pedidos.cliente_id = clientes.cliente_id
	 GROUP BY pedidos.cliente_id
	 HAVING COUNT( pedidos.cliente_id) > 3
);

---EJERCICIO 27---
SELECT nombre AS clientes
FROM clientes
WHERE EXISTS(
     SELECT 1
	 FROM pedidos
	 INNER JOIN productos
	 ON pedidos.producto_id = productos.producto_id
	 WHERE pedidos.cantidad > 1
	 AND productos.precio_unitario > 50000.00
	 AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 28---
SELECT DISTINCT c.nombre AS clientes
FROM clientes c
WHERE EXISTS (
     SELECT 1
	 FROM productos p
	 WHERE NOT EXISTS (
	       SELECT 1
		   FROM pedidos pe
		   WHERE pe.producto_id = p.producto_id)
	     AND p.producto_id IN (
             SELECT pe.producto_id
			 FROM pedidos pe
			 WHERE pe.cliente_id = c.cliente_id
		 )
);

---EJERCICIO 29---
SELECT nombre AS clientes
FROM clientes
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 INNER JOIN productos
	 ON pedidos.producto_id = productos.producto_id
	 WHERE productos.nombre LIKE 'A%'
	 AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 30---
SELECT nombre AS clientes
FROM clientes
WHERE EXISTS (
     SELECT 1
	 FROM pedidos
	 WHERE pedidos.cantidad > (
	      SELECT AVG(pedidos.cantidad)
		  FROM pedidos)
	 AND pedidos.cliente_id = clientes.cliente_id
);

---EJERCICIO 31---
SELECT nombre AS clientes
FROM clientes
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 WHERE p1.cliente_id = clientes.cliente_id 
	 AND NOT EXISTS (
          SELECT 1
		  FROM pedidos p2
		  WHERE p1.producto_id = p2.producto_id
		  AND p2.cliente_id != p1.cliente_id)
);

---EJERCICIO 32---
SELECT nombre AS productos
FROM productos p
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 WHERE p1.producto_id = p.producto_id
	 AND NOT EXISTS (
	     SELECT 1 
	     FROM pedidos p2
		 WHERE p1.producto_id = p2.producto_id 
		 AND p1.cliente_id != p2.cliente_id)
);

---EJERCICIO 33---
SELECT DISTINCT nombre AS clientes
FROM clientes c1
WHERE EXISTS(
     SELECT 1
	 FROM pedidos p1
	 INNER JOIN productos p
	 ON p1.producto_id = p.producto_id
	 WHERE p1.cliente_id = c1.cliente_id
	 AND  p.precio_unitario >(
         SELECT AVG(precio_unitario)
		 FROM productos)
);

---EJERCICIO 34---
SELECT DISTINCT nombre AS productos
FROM productos p
WHERE NOT EXISTS (
     SELECT 1
	 FROM pedidos p1
	 INNER JOIN clientes c
	 ON p1.cliente_id = c.cliente_id
	 WHERE c.edad > 40 
	 AND p1.producto_id = p.producto_id
);

---EJERCICIO 35---
SELECT nombre AS clientes
FROM clientes c
WHERE EXISTS (
    SELECT 1
	FROM pedidos p1
	WHERE p1.fecha >= CURRENT_DATE - INTERVAL '90' DAY 
	AND p1.cliente_id = c.cliente_id
	AND NOT EXISTS (
        SELECT 1
		FROM pedidos p2
		WHERE p2.fecha < CURRENT_DATE - INTERVAL '90' DAY
	    AND p2.cliente_id = p1.cliente_id)
);

---EJERCICIO 36---
SELECT nombre AS productos
FROM productos p
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 WHERE p1.producto_id = p.producto_id
	 GROUP BY p1.producto_id
	 HAVING COUNT(p1.producto_id) = 1
);

---EJERCICIO 37---
SELECT nombre AS clientes
FROM clientes c1
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 WHERE p1.cliente_id = c1.cliente_id
	 AND EXISTS (
        SELECT 1
		FROM clientes c2
		WHERE c2.ciudad = c1.ciudad
		AND c2.cliente_id != p1.cliente_id)
);

---EJERCICIO 38---
SELECT nombre AS productos
FROM productos p
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 INNER JOIN clientes c1
	 ON p1.cliente_id = c1.cliente_id
	 WHERE p1.producto_id = p.producto_id
	 AND c1.ciudad = 'Bogotá' 
);

---EJERCICIO 39---
SELECT nombre AS clientes
FROM clientes c
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 INNER JOIN productos p
	 ON p1.producto_id = p.producto_id
	 WHERE p1.cliente_id = c.cliente_id
	 AND p.precio_unitario < (
         SELECT AVG (precio_unitario)
		 FROM productos)
	 GROUP BY p1.cliente_id
	 HAVING COUNT (p1.producto_id) > 10
);

---EJERCICIO 40---
SELECT nombre AS productos
FROM productos pr
WHERE EXISTS (
     SELECT 1
	 FROM pedidos p1
	 WHERE p1.producto_id = pr.producto_id
	 AND fecha >= CURRENT_DATE - INTERVAL '30' DAY
);
