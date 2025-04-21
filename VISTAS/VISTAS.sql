CREATE TABLE ciudades (
  ciudad_id SERIAL PRIMARY KEY,
  nombre_ciudad VARCHAR (100),
  direccion VARCHAR (100) UNIQUE,
  codigo_postal VARCHAR (20)
);

CREATE TABLE clientes (
  cliente_id SERIAL PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL,
  correo VARCHAR (100) UNIQUE,
  telefono VARCHAR (15) UNIQUE,
  ciudad_id INT REFERENCES ciudades (ciudad_id)
);

CREATE TABLE empleados (
  empleado_id SERIAL PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL,
  fecha_ingreso DATE DEFAULT CURRENT_DATE
);

CREATE TABLE categorias (
  categoria_id SERIAL PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL,
  descripcion VARCHAR (100) NOT NULL
);

CREATE TABLE proveedores (
  proveedor_id SERIAL PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL,
  telefono VARCHAR (15) UNIQUE,
  correo VARCHAR (100) UNIQUE
);

CREATE TABLE productos (
  producto_id SERIAL PRIMARY KEY,
  nombre VARCHAR (100) NOT NULL,
  categoria_id INT REFERENCES categorias (categoria_id),
  proveedor_id INT REFERENCES proveedores (proveedor_id)
);

CREATE TABLE compras (
  compra_id SERIAL PRIMARY KEY,
  proveedor_id INT REFERENCES proveedores (proveedor_id),
  fecha_compra DATE DEFAULT CURRENT_DATE
);

CREATE TABLE detalles_compras (
  detalle_compra_id SERIAL PRIMARY KEY,
  compra_id INT REFERENCES compras (compra_id),
  producto_id INT REFERENCES productos (producto_id),
  cantidad INT NOT NULL,
  precio_unitario NUMERIC (10, 2) NOT NULL,
  subtotal NUMERIC (10,2) 
    GENERATED ALWAYS AS (precio_unitario * cantidad) STORED
);

CREATE TABLE inventario (
  inventario_id SERIAL PRIMARY KEY,
  producto_id INT REFERENCES productos (producto_id) ,
  cantidad INT NOT NULL,
  fecha_actualizacion DATE DEFAULT CURRENT_DATE,
  compra_id INT REFERENCES compras (compra_id)
);

CREATE TABLE ventas (
  venta_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  empleado_id INT REFERENCES empleados (empleado_id),
  fecha_venta DATE DEFAULT CURRENT_DATE
);

CREATE TABlE detalles_ventas (
  detalle_venta_id SERIAL PRIMARY KEY,
  venta_id INT REFERENCES ventas (venta_id),
  producto_id INT REFERENCES productos (producto_id),
  cantidad INT NOT NULL,
  precio_unitario NUMERIC (10,2) NOT NULL,
  subtotal NUMERIC (10,2) 
    GENERATED ALWAYS AS (precio_unitario * cantidad) STORED
);

CREATE TABLE diferencia (
  diferencia_id SERIAL PRIMARY KEY,
  detalle_venta_id INT REFERENCES detalles_ventas (detalle_venta_id),
  detalle_compra_id INT REFERENCES detalles_compras (detalle_compra_id)
);

CREATE TABLE pagos (
  pago_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  venta_id INT REFERENCES ventas (venta_id),
  monto NUMERIC (10,2) NOT NULL,
  fecha_pago DATE DEFAULT CURRENT_DATE
);

--DATOS CIUDADES
INSERT INTO ciudades (nombre_ciudad, direccion, codigo_postal) VALUES
('Bogotá', 'Cra 10 #20-30', '110111'),
('Medellín', 'Cl 45 #50-21', '050021'),
('Cali', 'Av 3N #40-55', '760001'),
('Barranquilla', 'Cl 72 #45-12', '080001'),
('Cartagena', 'Av Pedro de Heredia #31-45', '130001'),
('Bucaramanga', 'Cra 27 #36-22', '680001'),
('Pereira', 'Cl 14 #8-40', '660001'),
('Manizales', 'Cl 22 #7-21', '170001'),
('Santa Marta', 'Cra 5 #20-10', '470001'),
('Cúcuta', 'Av 0 #15-30', '540001'),
('Villavicencio', 'Cl 39 #30-20', '500001'),
('Ibagué', 'Cra 4 #10-10', '730001'),
('Neiva', 'Cl 21 #5-11', '410001'),
('Armenia', 'Cra 14 #19-45', '630001'),
('Sincelejo', 'Cl 25 #8-50', '700001'),
('Montería', 'Av Circunvalar #44-12', '230001'),
('Popayán', 'Cl 5 #2-35', '190001'),
('Pasto', 'Cl 17 #23-60', '520001'),
('Tunja', 'Cra 9 #15-12', '150001'),
('Riohacha', 'Cl 13 #7-30', '440001');

--DATOS CLIENTES
INSERT INTO clientes (nombre, correo, telefono, ciudad_id) VALUES
('Carlos Martínez', 'carlos.martinez@email.com', '3001234567', 1),
('Laura Gómez', 'laura.gomez@email.com', '3002345678', 2),
('Andrés Pérez', 'andres.perez@email.com', '3003456789', 2),
('María Rodríguez', 'maria.rodriguez@email.com', '3004567890', 4),
('Julián Torres', 'julian.torres@email.com', '3005678901', 2),
('Paola Ramírez', 'paola.ramirez@email.com', '3006789012', 1),
('Santiago Morales', 'santiago.morales@email.com', '3007890123', 7),
('Camila Herrera', 'camila.herrera@email.com', '3008901234', 8),
('Daniel Castro', 'daniel.castro@email.com', '3009012345', 9),
('Tatiana López', 'tatiana.lopez@email.com', '3010123456', 10),
('Esteban Díaz', 'esteban.diaz@email.com', '3011234567', 11),
('Ana Méndez', 'ana.mendez@email.com', '3012345678', 12),
('Felipe Ruiz', 'felipe.ruiz@email.com', '3013456789', 13),
('Isabela Torres', 'isabela.torres@email.com', '3014567890', 4),
('Mateo Gil', 'mateo.gil@email.com', '3015678901', 5),
('Valentina Suárez', 'valentina.suarez@email.com', '3016789012', 1),
('Samuel Vargas', 'samuel.vargas@email.com', '3017890123', 5),
('Gabriela Peña', 'gabriela.pena@email.com', '3018901234', 2),
('Tomás Mejía', 'tomas.mejia@email.com', '3019012345', 2),
('Daniela Acosta', 'daniela.acosta@email.com', '3020123456', 2);

--DATOS EMPLEADOS
INSERT INTO empleados (nombre) VALUES
('Luis Ramírez'),
('Diana Moreno'),
('Carlos Torres'),
('Valeria Jiménez'),
('Jorge Mejía'),
('Ana Salazar'),
('Sebastián Ríos'),
('Laura Castaño'),
('Pedro Mendoza'),
('Juliana Reyes'),
('Camilo Duarte'),
('Sofía Vargas'),
('Ricardo Nieto'),
('Mariana Quintero'),
('Felipe Cárdenas');

--DATOS CATEGORIA
INSERT INTO categorias (nombre, descripcion) VALUES
('Electrónica', 'Dispositivos y accesorios electrónicos'),
('Ropa', 'Prendas de vestir para hombres y mujeres'),
('Hogar', 'Productos para el hogar y la cocina'),
('Deportes', 'Artículos deportivos y de ejercicio'),
('Juguetes', 'Juguetes para todas las edades'),
('Belleza', 'Productos de cuidado personal y cosmética'),
('Libros', 'Libros de distintos géneros y autores'),
('Alimentos', 'Productos alimenticios y bebidas'),
('Tecnología', 'Gadgets y equipos tecnológicos'),
('Mascotas', 'Productos para el cuidado de mascotas'),
('Papelería', 'Artículos escolares y de oficina'),
('Calzado', 'Zapatos, sandalias y botas'),
('Bebés', 'Productos para el cuidado del bebé'),
('Automotriz', 'Accesorios y repuestos de vehículos'),
('Ferretería', 'Herramientas y materiales de construcción'),
('Salud', 'Productos farmacéuticos y de bienestar'),
('Videojuegos', 'Consolas y juegos digitales'),
('Instrumentos musicales', 'Instrumentos y accesorios musicales'),
('Viajes', 'Artículos para viajes y camping'),
('Limpieza', 'Productos de aseo y limpieza del hogar');

-- DATOS PROVEEDORES
INSERT INTO proveedores (nombre, telefono, correo) VALUES
('Distribuidora Andina', '3101112233', 'contacto@andina.com'),
('ElectroGlobal', '3102223344', 'ventas@electroglobal.com'),
('Moda al Día', '3103334455', 'info@modaaldia.com'),
('HogarFácil', '3104445566', 'hogar@facil.com'),
('Papelería Central', '3105556677', 'contacto@papecentral.com'),
('Super Limpieza', '3106667788', 'ventas@superlimpieza.com'),
('Deportes Extremos', '3107778899', 'deportes@extremos.com'),
('Cómputo y Más', '3108889900', 'info@computoymas.com'),
('Alimentos Selectos', '3109990011', 'contacto@selectos.com'),
('PetZone', '3110001122', 'ventas@petzone.com'),
('Ferretería Rápida', '3111112233', 'info@ferreteriarapida.com'),
('Viajes al Instante', '3112223344', 'reservas@alinstante.com'),
('Bebé y Mamá', '3113334455', 'contacto@bebeymama.com'),
('Estilo Urbano', '3114445566', 'ventas@estilourbano.com'),
('TecnoWorld', '3115556677', 'soporte@tecnoworld.com'),
('Sabor Local', '3116667788', 'info@saborlocal.com'),
('Juguetes Mágicos', '3117778899', 'contacto@juguetesmagicos.com'),
('Música y Sonido', '3118889900', 'ventas@musica-sonido.com'),
('Belleza Total', '3119990011', 'info@bellezatotal.com'),
('AutoRepuestos Express', '3120001122', 'ventas@autorexpress.com');

-- DATOS PRODUCTOS
INSERT INTO productos (nombre, categoria_id, proveedor_id) VALUES
('Smartphone Premium', 1, 3),
('Camiseta Deportiva', 2, 5),
('Arroz Blanco 1kg', 3, 1),
('El Señor de los Anillos', 4, 2),
('Pelota de Baloncesto', 5, 4),
('Auriculares Inalámbricos', 1, 3),
('Pantalones de Vestir', 2, 5),
('Pasta de Trigo 500g', 3, 1),
('Cien Años de Soledad', 4, 2),
('Bicicleta de Montaña', 5, 4),
('Smartwatch Deportivo', 1, 3),
('Blusa de Seda', 2, 5),
('Aceite de Oliva 500ml', 3, 1),
('Orgullo y Prejuicio', 4, 2),
('Pesas Rusas 10kg', 5, 4),
('Televisor OLED 65"', 1, 3),
('Falda Larga', 2, 5),
('Frijoles Cargamanto 1kg', 3, 1),
('Don Quijote de la Mancha', 4, 2),
('Caminadora Eléctrica', 5, 4);

--DATOS COMPRAS
INSERT INTO compras (proveedor_id, fecha_compra) VALUES
(1, '2025-04-01'),
(2, '2025-04-03'),
(3, '2025-04-05'),
(4, '2025-04-07'),
(5, '2025-04-09'),
(1, '2025-04-11'),
(2, '2025-04-13'),
(3, '2025-04-15'),
(4, '2025-04-17'),
(5, '2025-04-19'),
(1, '2025-04-21'),
(2, '2025-04-23'),
(3, '2025-04-25'),
(4, '2025-04-27'),
(5, '2025-04-29'),
(1, '2025-05-01'),
(2, '2025-05-03'),
(3, '2025-05-05'),
(4, '2025-05-07'),
(5, '2025-05-09');

--DATOS DETALLE VENTAS
INSERT INTO detalles_compras (compra_id, producto_id, cantidad, precio_unitario) VALUES
(1, 2, 3, 550.50),
(2, 7, 10, 2.25),
(3, 15, 2, 80.00),
(4, 1, 1, 1050.00),
(5, 9, 5, 1.20),
(6, 18, 7, 5.10),
(7, 4, 12, 26.80),
(8, 11, 4, 122.75),
(9, 20, 6, 61.10),
(10, 3, 2, 1210.25),
(11, 16, 1, 1520.99),
(12, 6, 3, 815.50),
(13, 13, 8, 57.30),
(14, 8, 15, 1.65),
(15, 19, 4, 108.90),
(16, 5, 9, 47.20),
(17, 12, 2, 36.90),
(18, 17, 11, 31.50),
(19, 10, 3, 185.00),
(20, 14, 7, 92.40);

--DATOS INVENTARIO 
INSERT INTO inventario (producto_id, cantidad, compra_id) VALUES
(1, 50, 1),
(2, 100, 2),
(3, 75, 3),
(4, 200, 4),
(5, 150, 5),
(6, 60, 6),
(7, 250, 7),
(8, 180, 8),
(9, 300, 9),
(10, 40, 10),
(11, 90, 11),
(12, 120, 12),
(13, 220, 13),
(14, 160, 14),
(15, 70, 15),
(16, 30, 16),
(17, 140, 17),
(18, 280, 18),
(19, 55, 19),
(20, 110, 20);

--DATOS VENTAS 
INSERT INTO ventas (cliente_id, empleado_id, fecha_venta) VALUES
(1, 3, '2025-04-01'),
(2, 1, '2025-04-03'),
(3, 2, '2025-04-05'),
(4, 3, '2025-04-07'),
(5, 1, '2025-04-09'),
(6, 2, '2025-04-11'),
(7, 3, '2025-04-13'),
(8, 1, '2025-04-15'),
(9, 2, '2025-04-17'),
(10, 3, '2025-04-19'),
(1, 2, '2025-04-20'),
(2, 3, '2025-04-22'),
(3, 1, '2025-04-24'),
(4, 2, '2025-04-26'),
(5, 3, '2025-04-28'),
(6, 1, '2025-04-30'),
(7, 2, '2025-05-02'),
(8, 3, '2025-05-04'),
(9, 1, '2025-05-06'),
(10, 2, '2025-05-08');

-- DATOS DETALLES VENTAS 
INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 2, 980.00),
(1, 4, 1, 30.50),
(2, 7, 5, 2.30),
(2, 10, 2, 190.00),
(3, 13, 3, 60.00),
(3, 16, 1, 1550.00),
(4, 2, 1, 560.00),
(4, 5, 3, 48.50),
(5, 8, 2, 1.60),
(5, 11, 1, 125.00),
(6, 14, 4, 95.00),
(6, 17, 2, 32.00),
(7, 3, 1, 1220.00),
(7, 6, 1, 825.00),
(8, 9, 10, 1.25),
(8, 12, 3, 37.50),
(9, 15, 1, 78.50),
(9, 18, 5, 5.00),
(10, 1, 1, 995.00),
(10, 20, 2, 62.00);

--DATOS DIFERENCIA
INSERT INTO diferencia (detalle_venta_id, detalle_compra_id) VALUES
(1, 1),
(2, 3),
(3, 5),
(4, 7),
(5, 9),
(6, 11),
(7, 13),
(8, 15),
(9, 17),
(10, 19),
(11, 2),
(12, 4),
(13, 6),
(14, 8),
(15, 10),
(16, 12),
(17, 14),
(18, 16),
(19, 18),
(20, 20);

--DATOS PAGOS
INSERT INTO pagos (cliente_id, venta_id, monto, fecha_pago) VALUES
(1, 1, 1010.50, '2025-04-02'),
(2, 2, 20.75, '2025-04-04'),
(3, 3, 180.00, '2025-04-06'),
(4, 4, 588.50, '2025-04-08'),
(5, 5, 126.60, '2025-04-10'),
(6, 6, 857.00, '2025-04-12'),
(7, 7, 1252.00, '2025-04-14'),
(8, 8, 215.00, '2025-04-16'),
(9, 9, 110.50, '2025-04-18'),
(10, 10, 1057.00, '2025-04-20'),
(1, 11, 500.00, '2025-04-21'),
(2, 12, 75.00, '2025-04-23'),
(3, 13, 150.00, '2025-04-25'),
(4, 14, 300.00, '2025-04-27'),
(5, 15, 90.00, '2025-04-29'),
(6, 16, 1600.00, '2025-05-01'),
(7, 17, 60.00, '2025-05-03'),
(8, 18, 10.00, '2025-05-05'),
(9, 19, 550.00, '2025-05-07'),
(10, 20, 120.00, '2025-05-09');

--EJERCICIO 1
CREATE OR REPLACE VIEW clientes_frecuentes AS 
   SELECT cl.nombre AS clientes,
   COUNT (v.cliente_id) AS total_ventas
   FROM clientes cl
   JOIN ventas v
   ON cl.cliente_id = v.cliente_id
   GROUP BY cl.nombre
   HAVING COUNT (v.cliente_id) >= 2;

SELECT * FROM clientes_frecuentes;

--EJERCICIO 2
CREATE OR REPLACE VIEW pocas_unidades AS
   SELECT pr.nombre AS productos,
          i.cantidad
   FROM productos pr
   JOIN inventario i
   ON pr.producto_id = i.producto_id
   WHERE i.cantidad <= 40;

SELECT * FROM pocas_unidades;

--EJERCICIO 3
CREATE OR REPLACE VIEW resumen_ventas AS
   SELECT v.venta_id,
          cl.nombre AS clientes,
          dll.subtotal AS total,
		  v.fecha_venta
   FROM ventas v
   JOIN clientes cl ON cl.cliente_id = v.cliente_id
   JOIN detalles_ventas dll ON dll.venta_id = v.venta_id
   ORDER BY v.venta_id ASC;

SELECT * FROM resumen_ventas;

--EJERCICIO 4
CREATE OR REPLACE VIEW detalles_orden AS
   SELECT v.venta_id,
          pr.nombre AS productos,
          dll.cantidad,
		  dll.precio_unitario,
		  dll.subtotal
   FROM detalles_ventas dll
   JOIN ventas v ON dll.venta_id = v.venta_id
   JOIN productos pr ON pr.producto_id = dll.producto_id;

SELECT * FROM detalles_orden;

--EJERCICIO 5
CREATE OR REPLACE VIEW ventas_empleados AS
  SELECT e.empleado_id,
         e.nombre AS empleados,
         COALESCE (COUNT(v.empleado_id),0)
  FROM ventas v
  JOIN empleados e
  ON v.empleado_id = e.empleado_id
  GROUP BY e.empleado_id ,e.nombre;

SELECT * FROM ventas_empleados;

--EJERCICIO 6
CREATE OR REPLACE VIEW productos_mas_vendidos AS 
  SELECT pr.nombre AS productos,
         COALESCE(SUM(dll.cantidad), 0) AS total_venta
  FROM productos pr
  JOIN detalles_ventas dll
  ON pr.producto_id = dll.producto_id
  GROUP BY pr.nombre, dll.cantidad
  ORDER BY dll.cantidad DESC;

SELECT * FROM productos_mas_vendidos;

--EJERCICIO 7
CREATE OR REPLACE VIEW ciudades_clientes AS
   SELECT cl.nombre AS clientes,
          c.nombre_ciudad AS ciudad
   FROM clientes cl
   JOIN ciudades c ON cl.ciudad_id = c.ciudad_id
   ORDER BY c.nombre_ciudad ASC;

SELECT * FROM ciudades_clientes;

--EJERCICIO 8
CREATE OR REPLACE VIEW ingresos_mensuales AS 
   SELECT EXTRACT (YEAR FROM v.fecha_venta) AS anio,
          EXTRACT(MONTH FROM v.fecha_venta) AS mes,
          SUM(dll.subtotal) AS ingresos
	FROM ventas v
	JOIN detalles_ventas dll 
	ON dll.venta_id = v.venta_id
	GROUP BY anio, mes
	ORDER BY anio, mes;
	
SELECT * FROM ingresos_mensuales;

--EJERCICIO 9
CREATE OR REPLACE VIEW clientes_sin_compras AS
   SELECT cl.nombre AS clientes,
          COALESCE (v.venta_id,0) AS ventas
   FROM clientes cl
   LEFT JOIN ventas v
   ON v.cliente_id = cl.cliente_id
   WHERE v.venta_id IS NULL;

SELECT * FROM clientes_sin_compras;

-- EJERCICIO 10
CREATE OR REPLACE VIEW empleados_activos AS 
   SELECT nombre AS empleados, 
          estado
   FROM empleados 
   WHERE estado LIKE 'A%';

-- EJERCICIO 11
CREATE OR REPLACE VIEW productos_sin_ventas AS
   SELECT pr.nombre AS productos,
          COALESCE (dll.venta_id,0) AS ventas
   FROM productos pr
   LEFT JOIN detalles_ventas dll
   ON pr.producto_id = dll.producto_id
   WHERE dll.venta_id IS NULL;

SELECT * FROM productos_sin_ventas;

-- EJERCICIO 12
CREATE OR REPLACE VIEW gastos_clientes AS 
   SELECT cl.nombre AS clientes,
          SUM(dll.subtotal) AS total_vendido
   FROM ventas v
   JOIN detalles_ventas dll ON v.venta_id = dll.venta_id
   JOIN clientes cl ON cl.cliente_id = v.cliente_id
   GROUP BY cl.nombre
   ORDER BY total_vendido DESC;
   
SELECT * FROM gastos_clientes;

-- EJERCICIO 13
CREATE OR REPLACE VIEW categoria_productos AS
   SELECT c.nombre AS categoria,
          pr.nombre AS productos,
		  dll.precio_unitario AS precio
   FROM productos pr
   JOIN categorias c ON c.categoria_id = pr.categoria_id
   JOIN detalles_ventas dll ON dll.producto_id = pr.producto_id
   ORDER BY c.nombre ASC; 

SELECT * FROM categoria_productos;

-- EJERCICIO 14
CREATE OR REPLACE VIEW empleados_ventas AS
   SELECT e.nombre AS empleados,
          COALESCE(COUNT(v.empleado_id),0) AS total_ventas,
		  v.fecha_venta
   FROM empleados e
   JOIN ventas v
   ON e.empleado_id = v.empleado_id
   GROUP BY empleados, v.fecha_venta
   ORDER BY empleados;

SELECT * FROM empleados_ventas;

--EJERCICIO 15
CREATE OR REPLACE VIEW historial_compras AS
  SELECT cl.nombre AS clientes,
         pr.nombre AS productos,
		 dll.cantidad,
		 v.fecha_venta
  FROM ventas v
  JOIN clientes cl ON v.cliente_id = cl.cliente_id
  JOIN detalles_ventas dll ON dll.venta_id = v.venta_id
  JOIN productos pr ON pr.producto_id = dll.producto_id;

SELECT * FROM historial_compras;

--EJERCICIO 16
CREATE OR REPLACE VIEW productos_costosos AS
  SELECT v.venta_id,
         pr.nombre AS productos,
         dll.precio_unitario
  FROM productos pr
  JOIN detalles_ventas dll ON dll.producto_id = pr.producto_id
  JOIN ventas v ON dll.venta_id = v.venta_id
  WHERE dll.precio_unitario > 1000.00;

SELECT * FROM productos_costosos;

--EJERCICIO 17
CREATE OR REPLACE VIEW promedio_gasto AS
   SELECT cl.nombre AS clientes,
          ROUND (COALESCE(AVG(p.monto),0.00),2) AS promedio_gasto
   FROM clientes cl
   JOIN pagos p
   ON cl.cliente_id = p.cliente_id
   GROUP BY clientes
   ORDER BY promedio_gasto DESC;

SELECT * FROM promedio_gasto;

--EJERCICIO 18
CREATE OR REPLACE VIEW ordenes_dia AS
   SELECT EXTRACT (YEAR FROM fecha_venta) AS anio,
          CASE 
		     WHEN EXTRACT(MONTH FROM fecha_venta) = 4 
			 THEN 'Abril'
		  END AS mes,
          EXTRACT (DAY FROM fecha_venta) AS dia,
		  COALESCE (COUNT(venta_id),0) AS total_ventas
   FROM ventas
   GROUP BY anio,mes,dia
   ORDER BY anio,mes,dia;

SELECT * FROM ordenes_dia WHERE mes = 'Abril';
