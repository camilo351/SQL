---TABLA CLIENTES---
CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
ciudad VARCHAR (100),
pais VARCHAR (100)
);

---TABLA PRODUCTOS---
CREATE TABLE productos (
producto_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
categoria VARCHAR (100),
precio_unitario NUMERIC (10,2)
);

---TABLA PEDIDOS---
CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto_id INT,
fecha_pedido DATE,
cantidad INT,
total INT,
FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

---TABLA VENTAS---
CREATE TABLE ventas (
venta_id SERIAL PRIMARY KEY,
cliente_id INT,
producto_id INT,
fecha_venta DATE,
cantidad INT,
monto NUMERIC (10,2),
FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

---DATOS CLIENTES---
INSERT INTO clientes (nombre, ciudad, pais) VALUES
('Camilo', 'Medellín', 'Colombia'),
('Neymar', 'Santos', 'Brasil'),
('Mbappe', 'Paris', 'Francia');

---DATOS PRODUCTOS---
INSERT INTO productos (nombre, categoria, precio_unitario) VALUES
('Laptop', 'Tecnologia', 50),
('Télefono', 'Tecnologia', 28),
('Balón', 'Deporte', 10),
('Camisa', 'Ropa', 20),
('Gorra', 'Accesorio', 25);

---DATOS PEDIDOS---
INSERT INTO pedidos (cliente_id, producto_id, fecha_pedido, cantidad, total) VALUES
(1, 1, '2024-01-01', 4, 200),
(2, 2, '2024-01-01', 2, 56),
(3, 3, '2024-01-01', 5, 50),
(1, 1, '2024-02-01', 3, 150),
(2, 2, '2024-02-01', 1, 28),
(3, 3, '2024-02-01', 2, 20),
(1, 1, '2024-03-01', 2, 100),
(2, 2, '2024-03-01', 4, 112),
(3, 3, '2024-03-01', 1, 10),
(1, 1, '2024-04-01', 10, 500),
(2, 2, '2024-04-01', 3, 84),
(3, 3, '2024-04-01', 8, 80);

---DATOS VENTAS---
INSERT INTO ventas (cliente_id, producto_id, fecha_venta, cantidad, monto) VALUES
(1, 1, '2024-01-01', 4, 200),
(2, 2, '2024-01-01', 2, 56),
(3, 3, '2024-01-01', 5, 50),
(1, 1, '2024-02-01', 3, 150),
(2, 2, '2024-02-01', 1, 28),
(3, 3, '2024-02-01', 2, 20),
(1, 1, '2024-03-01', 2, 100),
(2, 2, '2024-03-01', 4, 112),
(3, 3, '2024-03-01', 1, 10),
(1, 1, '2024-04-01', 10, 500),
(2, 2, '2024-04-01', 3, 84),
(3, 3, '2024-04-01', 8, 80);

---EJERCICIO 1---
WITH mes AS(
   SELECT EXTRACT (MONTH FROM v.fecha_venta) AS mes,
   pr.nombre AS producto,
   v.monto
   FROM ventas v
   INNER JOIN productos pr
   ON v.producto_id = pr.producto_id
)
SELECT producto, mes, monto,
LAG(monto, 1, 0)OVER(PARTITION BY producto ORDER BY mes) AS venta_mes_anterior,
monto - LAG(monto, 1, 0)OVER(PARTITION BY producto ORDER BY mes) AS diferencia
FROM mes;


---EJERCICIO 2---
WITH bimestre AS (
    SELECT EXTRACT (MONTH FROM v.fecha_venta) AS mes,
    pr.nombre AS producto,
    v.monto
    FROM ventas v
    INNER JOIN productos pr
    ON v.producto_id = pr.producto_id
)
SELECT producto, mes, monto,
LAG(monto, 2) OVER (PARTITION BY producto ORDER BY mes) AS venta_bimestre_anterior,
monto - LAG(monto, 2) OVER (PARTITION BY producto ORDER BY mes) AS diferencia
FROM bimestre;

---EJERCICIO 3---
WITH mes AS (
SELECT EXTRACT (MONTH FROM v.fecha_venta) AS mes,
pr.nombre AS producto,
v.cantidad,
v.monto
FROM ventas v
INNER JOIN productos pr
ON v.producto_id = pr.producto_id
)
SELECT producto,  monto, mes, cantidad,
LAG(cantidad, 1, 0) OVER(PARTITION BY producto ORDER BY mes) AS cantidad_mes_anterior,
cantidad - LAG(cantidad, 1, 0) OVER(PARTITION BY producto ORDER BY mes) AS diferencia
FROM mes;

---EJERCICIO 4---
WITH primer_mes AS (
    SELECT pr.nombre AS productos, v.monto, 
	CASE 
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
		ELSE 'Mes_invalido'
		END AS mes
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT productos, mes, monto,
CASE 
    WHEN LAG(monto)OVER(PARTITION BY productos ORDER BY mes) IS NULL THEN 'Primer Mes'
	ELSE 'No'
END AS primer_mes
FROM primer_mes;

---EJERCICIO 5---
WITH meses AS (
    SELECT
	CASE
	    WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
	    WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
		WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
		WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
	END AS mes, 
	v.monto, pr.nombre AS productos
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT mes, productos, monto,
monto -  LAG(monto,1)OVER(PARTITION BY productos ORDER BY mes ) As diferencia,
CASE 
    WHEN monto < LAG(monto)OVER(PARTITION BY productos ORDER BY mes ) THEN 'bajo'
	ELSE  'No bajo'
	END AS mes_anterior
FROM meses;

---EJERCICIO 6---
WITH cambios AS (
    SELECT  pr.nombre AS productos,
	     CASE 
		     WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
			 WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
			 WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
			 WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
		 END AS mes, 
	v.monto,
	LAG(monto) OVER (PARTITION BY pr.nombre ORDER BY EXTRACT (MONTH FROM v.fecha_venta)) AS venta_mes_anterior
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT productos, mes, monto, venta_mes_anterior,
      CASE
           WHEN monto > venta_mes_anterior THEN 'aumento'
		   ELSE 'No aumento'
	  END AS estado
FROM cambios;

---EJERCICIO 7---
SELECT pr.nombre AS producto,
       EXTRACT (MONTH FROM v.fecha_venta) AS mes,
       v.monto,
       LAG(monto, 3, 0) OVER(PARTITION BY pr.nombre ORDER BY EXTRACT (MONTH FROM v.fecha_venta)) AS venta_hace_3_meses,
       monto -  LAG(monto, 3) OVER(PARTITION BY pr.nombre ORDER BY EXTRACT (MONTH FROM v.fecha_venta)) AS diferencia
 FROM ventas v
 INNER JOIN productos pr
 ON v.producto_id = pr.producto_id;
  
---EJERCICIO 8---
WITH promedio AS (
    SELECT pr.nombre AS productos, 
	       EXTRACT (MONTH FROM v.fecha_venta) AS mes,
		   v.monto
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT productos, mes, monto,
(LAG(monto, 1)OVER (PARTITION BY productos ORDER BY mes) + LAG(monto, 2)OVER (PARTITION BY productos ORDER BY mes)) / 2 AS promedio_dos_meses 
FROM promedio;

---EJERCICIO 9---
WITH caida_consecutiva AS (
    SELECT 
	pr.nombre AS productos,
	CASE 
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
    END AS mes,
	monto,
	LAG(v.monto)OVER (PARTITION BY pr.nombre ORDER BY EXTRACT(MONTH FROM v.fecha_venta)) AS mes_anterior,
	LAG(v.monto, 2)OVER (PARTITION BY pr.nombre ORDER BY EXTRACT(MONTH FROM v.fecha_venta)) AS dos_meses_anteriores,
	LAG(v.monto, 3)OVER (PARTITION BY pr.nombre ORDER BY EXTRACT(MONTH FROM v.fecha_venta)) AS tres_meses_anteriores
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT productos, mes, monto, mes_anterior, dos_meses_anteriores, tres_meses_anteriores,
       CASE 
	       WHEN monto < mes_anterior AND mes_anterior < dos_meses_anteriores AND dos_meses_anteriores < tres_meses_anteriores THEN 'Bajo'
		   ELSE 'No bajo'
		END AS estado
FROM caida_consecutiva; 

---EJERCICIO 10---
WITH producto_venta AS (
    SELECT pr.nombre AS productos,
	       v.monto,
		   CASE 
		       WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
			   WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
			   WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
			   WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
		   END AS mes,
		   DENSE_RANK()OVER(PARTITION BY pr.nombre ORDER BY v.monto DESC) AS ranking
	FROM ventas v
	INNER JOIN productos pr
	ON v.producto_id = pr.producto_id
)
SELECT productos, monto, mes,
LAG(productos)OVER(ORDER BY mes) AS producto_anterior,
CASE 
    WHEN productos = LAG(productos)OVER(ORDER BY mes) THEN 'Mismo producto líder'
	ELSE 'Cambio el producto líder'
END AS estado
FROM producto_venta
WHERE ranking = 1;

---EJERCICIO 11---
WITH mes_anterior AS (
    SELECT 
	c.nombre AS clientes,
	CASE 
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 1  THEN 'Enero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 2  THEN 'Febrero'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 3  THEN 'Marzo'
		WHEN EXTRACT(MONTH FROM v.fecha_venta) = 4  THEN 'Abril'
		ELSE 'Ninguno'
	END AS mes,
	SUM(v.cantidad) AS total_vendido
	FROM ventas v
	INNER JOIN clientes c
	ON v.cliente_id = c.cliente_id
	GROUP BY c.nombre, v.fecha_venta
)
SELECT 
clientes,
mes,
LAG(mes,1, 'Ninguno')OVER(PARTITION BY clientes) AS meses_anterior,
total_vendido
FROM mes_anterior; 

---EJERCICIO 12---
WITH ventas_totales AS (
    SELECT 
        pr.nombre AS productos, 
        pr.precio_unitario AS precio, 
        SUM(v.cantidad) AS cantidad,
        SUM(pr.precio_unitario * v.cantidad) AS total_venta,
        CASE 
            WHEN EXTRACT(MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
            WHEN EXTRACT(MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
            WHEN EXTRACT(MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
            WHEN EXTRACT(MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
        END AS mes
    FROM ventas v
    INNER JOIN productos pr
    ON v.producto_id = pr.producto_id
    GROUP BY pr.nombre, pr.precio_unitario, EXTRACT(MONTH FROM v.fecha_venta)
),

porcentajes AS (
    SELECT productos, precio, cantidad, total_venta, mes,
           (total_venta * 100.0) / SUM(total_venta) OVER (PARTITION BY mes) AS porcentaje
    FROM ventas_totales
)

SELECT productos, precio, cantidad, total_venta, mes, porcentaje,
       LAG(porcentaje, 1, 0) OVER(PARTITION BY productos ORDER BY mes) AS mes_anterior,
       porcentaje - LAG(porcentaje, 1, 0) OVER(PARTITION BY productos ORDER BY mes) AS diferencia
FROM porcentajes;

---EJERCICIO 13---
WITH primer_producto AS (
    SELECT pr.nombre AS productos, pr.precio_unitario, v.cantidad, 
	CASE 
	    WHEN EXTRACT(MONTH FROM fecha_venta) = 1 THEN 'Enero'
		WHEN EXTRACT(MONTH FROM fecha_venta) = 2 THEN 'Febrero'
		WHEN EXTRACT(MONTH FROM fecha_venta) = 3 THEN 'Marzo'
		WHEN EXTRACT(MONTH FROM fecha_venta) = 4 THEN 'Abril'
	END AS mes,
	SUM(monto) AS total_vendido
	FROM productos pr
	INNER JOIN ventas v
	ON pr.producto_id = v.producto_id
	GROUP BY pr.nombre, pr.precio_unitario, v.cantidad, EXTRACT(MONTH FROM fecha_venta)
),
ranking_mes AS (
   SELECT productos, precio_unitario, cantidad, mes, total_vendido,
   DENSE_RANK()OVER(ORDER BY total_vendido DESC) AS ranking
   FROM primer_producto
)
SELECT productos, precio_unitario, cantidad, mes, total_vendido, ranking
FROM ranking_mes
WHERE total_vendido > 1000 AND ranking = 1;

---EJERCICIO 14---
SELECT pr.nombre AS productos, v.monto, 
      CASE 
	      WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
		  WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
		  WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
		  WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
	  END AS mes,
      LAG(v.monto, 3)OVER(PARTITION BY pr.nombre) AS meses_anteriores,
	  v.monto -  LAG(v.monto, 3)OVER(PARTITION BY pr.nombre) AS diferencia
FROM productos pr
INNER JOIN ventas v
ON pr.producto_id = v.producto_id;

---EJERCICIO 15---
SELECT pr.nombre AS productos, v.cantidad, v.monto,
CASE 
     WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
	 WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
	 WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
     WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
END AS mes,
CASE 
	WHEN LAG(v.monto) OVER(PARTITION BY pr.nombre ORDER BY v.fecha_venta) < monto THEN 'mas ventas'
	ELSE '-----'
END AS venta
FROM productos pr
INNER JOIN ventas v
ON pr.producto_id = v.producto_id;

---EJERCICIO 16---
WITH productos_ventas AS (
    SELECT pr.nombre AS productos, 
	CASE 
	    WHEN EXTRACT (MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
		WHEN EXTRACT (MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
		WHEN EXTRACT (MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
		WHEN EXTRACT (MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
	END AS mes,
	v.monto
	FROM productos pr
	INNER JOIN ventas v
	ON pr.producto_id = v.producto_id
)
SELECT productos, mes, monto,  
COALESCE (LAG(monto, 1)OVER(PARTITION BY productos ORDER BY mes),0) AS mes_anterior,
COALESCE (LAG(monto, 2)OVER(PARTITION BY productos ORDER BY mes),0) AS dos_meses_anterior,
(monto + COALESCE (LAG(monto, 1)OVER(PARTITION BY productos ORDER BY mes),0) + COALESCE (LAG(monto, 2)OVER(PARTITION BY productos ORDER BY mes),0)) / 3 AS media_movil_tres_meses
FROM productos_ventas;

---EJERCICIO 17---
WITH caida_venta AS (
    SELECT pr.nombre AS productos, 
	EXTRACT(MONTH FROM v.fecha_venta) AS num_mes,
    CASE
        WHEN EXTRACT(MONTH FROM v.fecha_venta) = 1 THEN 'Enero'
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 2 THEN 'Febrero'
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 3 THEN 'Marzo'
	    WHEN EXTRACT(MONTH FROM v.fecha_venta) = 4 THEN 'Abril'
    END AS mes,
    v.monto
FROM productos pr
INNER JOIN ventas v
ON pr.producto_id = v.producto_id
)
SELECT productos, mes, monto,
COALESCE(LAG(monto,1)OVER(PARTITION BY productos ORDER BY num_mes), 0) AS mes_anterior,
COALESCE(LAG(monto,2)OVER(PARTITION BY productos ORDER BY num_mes), 0) AS dos_meses_anterior,
CASE
    WHEN monto < COALESCE(LAG(monto,1)OVER(PARTITION BY productos ORDER BY num_mes), 0) 
	AND COALESCE(LAG(monto,2)OVER(PARTITION BY productos ORDER BY num_mes), 0) < 
	COALESCE(LAG(monto,1)OVER(PARTITION BY productos ORDER BY num_mes), 0) AS mes_anterior THEN 'Bajo'
	ELSE 'No bajo'
END AS estado
FROM caida_venta;

