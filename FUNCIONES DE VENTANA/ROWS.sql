-- Tabla de ventas
CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10,2)
);

INSERT INTO ventas (id_cliente, fecha, total) VALUES
(1, '2024-01-01', 100.00),
(1, '2024-01-05', 150.00),
(1, '2024-01-10', 200.00),
(2, '2024-01-02', 120.00),
(2, '2024-01-06', 180.00),
(3, '2024-01-03', 90.00);

-- Tabla de compras
CREATE TABLE compras (
    id_compra SERIAL PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10,2)
);

INSERT INTO compras (id_cliente, fecha, total) VALUES
(1, '2024-01-02', 50.00),
(1, '2024-01-06', 75.00),
(1, '2024-01-08', 100.00),
(2, '2024-01-04', 60.00),
(2, '2024-01-07', 90.00);

-- Tabla de clima
CREATE TABLE clima (
    id_registro SERIAL PRIMARY KEY,
    ciudad VARCHAR(50),
    fecha DATE,
    temperatura DECIMAL(5,2)
);

INSERT INTO clima (ciudad, fecha, temperatura) VALUES
('Bogotá', '2024-01-01', 18.5),
('Bogotá', '2024-01-02', 19.0),
('Bogotá', '2024-01-03', 18.8),
('Medellín', '2024-01-01', 22.0),
('Medellín', '2024-01-02', 21.5);

-- Tabla de horas trabajadas
CREATE TABLE horas_trabajadas (
    id_turno SERIAL PRIMARY KEY,
    id_empleado INT,
    fecha DATE,
    horas INT
);

INSERT INTO horas_trabajadas (id_empleado, fecha, horas) VALUES
(1, '2024-01-01', 8),
(1, '2024-01-02', 7),
(2, '2024-01-01', 6),
(2, '2024-01-03', 8);

-- Tabla de juegos
CREATE TABLE juegos (
    id_juego SERIAL PRIMARY KEY,
    id_jugador INT,
    fecha DATE,
    puntos INT
);

INSERT INTO juegos (id_jugador, fecha, puntos) VALUES
(1, '2024-01-01', 50),
(1, '2024-01-05', 70),
(2, '2024-01-02', 40),
(2, '2024-01-06', 80);

-- Tabla de productos vendidos
CREATE TABLE productos_vendidos (
    id_venta SERIAL PRIMARY KEY,
    id_producto INT,
    fecha DATE,
    cantidad INT
);

INSERT INTO productos_vendidos (id_producto, fecha, cantidad) VALUES
(101, '2024-01-01', 5),
(102, '2024-01-02', 3),
(101, '2024-01-03', 4),
(103, '2024-01-04', 2);

-- Tabla de transacciones de usuario
CREATE TABLE transacciones_usuario (
    id_transaccion SERIAL PRIMARY KEY,
    id_usuario INT,
    fecha DATE,
    monto DECIMAL(10,2)
);

INSERT INTO transacciones_usuario (id_usuario, fecha, monto) VALUES
(1, '2024-01-01', 500.00),
(1, '2024-01-05', 300.00),
(2, '2024-01-02', 200.00),
(2, '2024-01-06', 400.00);

-- Tabla de retiros en cajero
CREATE TABLE cajero_retiros (
    id_retiro SERIAL PRIMARY KEY,
    id_cajero INT,
    fecha DATE,
    monto DECIMAL(10,2)
);

INSERT INTO cajero_retiros (id_cajero, fecha, monto) VALUES
(1, '2024-01-01', 200.00),
(1, '2024-01-02', 150.00),
(2, '2024-01-03', 180.00),
(2, '2024-01-04', 220.00);

-- Tabla de ingresos de negocio
CREATE TABLE ingresos_negocio (
    id_ingreso SERIAL PRIMARY KEY,
    id_negocio INT,
    fecha DATE,
    ingreso DECIMAL(10,2)
);

INSERT INTO ingresos_negocio (id_negocio, fecha, ingreso) VALUES
(1, '2024-01-01', 1000.00),
(1, '2024-01-05', 1500.00),
(2, '2024-01-02', 1200.00),
(2, '2024-01-06', 1800.00);

-- Tabla de costos operacionales
CREATE TABLE costos_operacionales (
    id_costo SERIAL PRIMARY KEY,
    id_empresa INT,
    fecha DATE,
    costo DECIMAL(10,2)
);

INSERT INTO costos_operacionales (id_empresa, fecha, costo) VALUES
(1, '2024-01-01', 500.00),
(1, '2024-01-06', 600.00),
(2, '2024-01-02', 450.00),
(2, '2024-01-07', 700.00);



---EJERCICIO 1---
SELECT id_cliente,
       fecha,
	   total,
	   SUM(total)OVER(PARTITION BY id_cliente ORDER BY fecha ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ultimas_tres_ventas
FROM ventas;

---EJERCICIO 2---
SELECT id_cliente,
       fecha,
	   total,
	   SUM(total)OVER(PARTITION BY id_cliente ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS ultimas_compras
FROM compras;

---EJERCICIO 3---
WITH dias AS (
    SELECT ciudad,
	       EXTRACT(DAY FROM fecha) AS dias,
		   temperatura
	FROM clima
)
SELECT ciudad,
       dias,
	   temperatura,
	   AVG(temperatura)OVER(PARTITION BY ciudad ORDER BY dias ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS ultimos_dias_temperatura
FROM dias;


---EJERCICIO 4---
SELECT id_empleado,
       fecha,
	   horas,
	   SUM(horas)OVER(PARTITION BY id_empleado ORDER BY fecha ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS total_horas
FROM horas_trabajadas;

---EJERCICIO 5---
SELECT id_jugador,
       fecha,
	   puntos,
	   SUM(puntos)OVER(PARTITION BY id_jugador ORDER BY fecha ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ultimos_tres_juegos
FROM juegos;

---EJERCICIO 6---
WITH dias_semana AS (
    SELECT id_producto, 
	       EXTRACT (DAY FROM fecha) AS dia,
		   cantidad, 
		   fecha
	FROM productos_vendidos
)
SELECT id_producto,
       dia,
	   cantidad,
	   SUM(cantidad)OVER(PARTITION BY id_producto ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS total_cantidad
FROM dias_semana;

---EJERCICIO 7---
SELECT id_usuario,
       fecha,
	   monto,
	   COUNT(monto)OVER(PARTITION BY id_usuario ORDER BY fecha ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS total_transacciones
FROM transacciones_usuario;

---EJERCICIO 8---
SELECT id_cajero,
       fecha,
	   monto,
	   SUM(monto)OVER(PARTITION BY id_cajero ORDER BY fecha ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS monto_cajero
FROM cajero_retiros;

---EJERCICIO 9---
SELECT id_negocio,
       fecha,
	   ingreso,
	   SUM(ingreso)OVER(PARTITION BY id_negocio ORDER BY fecha ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS monto_ingreso
FROM ingresos_negocio;

---EJERCICIO 10---
WITH meses AS (
    SELECT id_empresa,
	       fecha,
           EXTRACT (MONTH FROM fecha) AS mes,
	       costo
	FROM costos_operacionales
)
SELECT id_empresa,
       mes,
	   costo,
	   AVG(costo)OVER(PARTITION BY id_empresa ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS promedio_mes
FROM meses;

---EJERCICIO 11---
SELECT id_cliente,
       fecha,
	   total,
	   AVG(total)OVER(PARTITION BY id_cliente ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS promedio_cinco
FROM ventas;

---EJERCICIO 12---
SELECT id_cliente,
       fecha,
	   total,
	   COUNT(total)OVER(PARTITION BY id_cliente ORDER BY fecha ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS total_registro 
FROM compras;

---EJERCICIO 13---
SELECT id_cliente,
       fecha,
	   total,
	   LAG(total)OVER(PARTITION BY id_cliente ORDER BY fecha ) AS ultima_compra,
	   total - LAG(total)OVER(PARTITION BY id_cliente ORDER BY fecha) AS diferencia
FROM ventas;

---EJERCICIO 14---
SELECT id_jugador,
       fecha,
	   puntos,
	   SUM(puntos)OVER(PARTITION BY id_jugador ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS total_puntos
FROM juegos;

---EJERCICIO 15---
SELECT ciudad,
       fecha,
	   temperatura,
	   AVG(temperatura)OVER(PARTITION BY ciudad ORDER BY fecha ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS promedio_media
FROM clima;

---EJERCICIO 16---
SELECT id_empleado,
       fecha,
	   horas,
	   AVG(horas)OVER(PARTITION BY id_empleado ORDER BY fecha ROWS BETWEEN 4 PRECEDING AND CURRENT ROW) AS promedio_horas
FROM horas_trabajadas;

---EJERCICIO 17---
SELECT id_producto, 
       fecha,
	   cantidad,
	   SUM(cantidad)OVER(PARTITION BY id_producto ORDER BY fecha ROWS BETWEEN 5 PRECEDING AND CURRENT ROW) AS total
FROM  productos_vendidos;

---EJERCICIO 18---
SELECT id_usuario,
       fecha, 
	   monto,
	   SUM(monto)OVER(PARTITION BY id_usuario ORDER BY fecha ROWS BETWEEN 7 PRECEDING AND CURRENT ROW) AS total
FROM transacciones_usuario;

---EJERCICIO 19---
SELECT id_cajero,
       fecha,
	   monto,
	   MAX(monto)OVER(PARTITION BY id_cajero ORDER BY fecha ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS maximo
FROM cajero_retiros;

---EJERCICIO 20---
SELECT id_negocio,
       fecha,
	   ingreso,
	   SUM(ingreso)OVER(PARTITION BY id_negocio ORDER BY fecha ROWS BETWEEN 12 PRECEDING AND CURRENT ROW) AS total
FROM ingresos_negocio;