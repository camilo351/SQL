CREATE TABLE productos (
producto_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
categoria VARCHAR (100),
precio_unitario NUMERIC (10,2),
cantidad_disponible INT
);	

INSERT INTO productos (nombre, categoria, precio_unitario, cantidad_disponible) VALUES
('Laptop Dell XPS', 'Electrónica', 1200.50, 15),
('Mouse Logitech G502', 'Accesorios', 49.99, 30),
('Teclado Razer BlackWidow', 'Accesorios', 129.99, 20),
('Monitor Samsung 27"', 'Electrónica', 299.99, 25),
('Impresora HP LaserJet', 'Electrónica', 199.99, 10),
('Auriculares Sony WH-1000XM4', 'Accesorios', 349.99, 12),
('Cámara Canon EOS 90D', 'Electrónica', 1199.00, 8),
('Router TP-Link AX6000', 'Electrónica', 179.99, 18),
('Memoria USB SanDisk 128GB', 'Almacenamiento', 25.99, 50),
('Disco SSD Samsung 1TB', 'Almacenamiento', 109.99, 40),
('Tablet Apple iPad Air', 'Electrónica', 599.99, 10),
('Smartphone Samsung Galaxy S23', 'Electrónica', 999.99, 20),
('Parlante JBL Charge 5', 'Accesorios', 149.99, 15),
('Teclado Logitech K380', 'Accesorios', 39.99, 25),
('Mousepad SteelSeries QcK', 'Accesorios', 14.99, 60),
('Disco Duro Externo WD 2TB', 'Almacenamiento', 79.99, 35),
('Laptop HP Spectre', 'Electrónica', 1300.00, 12),
('Monitor LG UltraGear 32"', 'Electrónica', 399.99, 15),
('Auriculares Bose QuietComfort', 'Accesorios', 279.99, 10),
('Teclado Corsair K95', 'Accesorios', 169.99, 18),
('Mouse Razer DeathAdder', 'Accesorios', 59.99, 35),
('Cámara Nikon D7500', 'Electrónica', 999.99, 7),
('Smartwatch Apple Watch SE', 'Electrónica', 249.99, 20),
('Impresora Epson EcoTank', 'Electrónica', 299.99, 8),
('Router ASUS RT-AX88U', 'Electrónica', 229.99, 10),
('Memoria RAM Corsair 16GB', 'Almacenamiento', 79.99, 40),
('Disco SSD Kingston 500GB', 'Almacenamiento', 69.99, 30),
('Tablet Samsung Galaxy Tab S8', 'Electrónica', 699.99, 12),
('Teclado Microsoft Ergonomic', 'Accesorios', 49.99, 20),
('Mouse Logitech MX Master 3', 'Accesorios', 99.99, 18),
('Cámara GoPro Hero 10', 'Electrónica', 399.99, 10),
('Parlante Sony SRS-XB43', 'Accesorios', 179.99, 12),
('Monitor Dell UltraSharp 34"', 'Electrónica', 799.99, 6),
('Smartphone Google Pixel 7', 'Electrónica', 599.99, 14),
('Impresora Brother HL-L2350DW', 'Electrónica', 169.99, 9),
('Router Netgear Nighthawk AX8', 'Electrónica', 249.99, 7),
('Memoria USB Kingston 256GB', 'Almacenamiento', 49.99, 45),
('Disco HDD Seagate 4TB', 'Almacenamiento', 99.99, 20),
('Laptop ASUS ROG Zephyrus', 'Electrónica', 1799.99, 5),
('Monitor MSI Curved 32"', 'Electrónica', 349.99, 10),
('Auriculares JBL Tune 750BT', 'Accesorios', 79.99, 20),
('Teclado Redragon Kumara', 'Accesorios', 45.99, 25),
('Mouse Razer Viper Ultimate', 'Accesorios', 129.99, 15),
('Cámara Sony Alpha A6400', 'Electrónica', 899.99, 7),
('Tablet Lenovo Tab P11', 'Electrónica', 249.99, 15),
('Parlante Bose SoundLink Revolve', 'Accesorios', 199.99, 10),
('Disco SSD Crucial 2TB', 'Almacenamiento', 159.99, 12),
('Memoria RAM G.Skill 32GB', 'Almacenamiento', 129.99, 15),
('Smartphone OnePlus 11', 'Electrónica', 749.99, 10);

CREATE TABLE empleados (
empleado_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
departamento VARCHAR (100),
salario NUMERIC (10,2),
fecha_contratacion DATE
);

INSERT INTO empleados (nombre, departamento, salario, fecha_contratacion) VALUES
('Carlos Pérez', 'TI', 4500.00, '2021-03-15'),
('María González', 'Recursos Humanos', 3800.00, '2019-07-10'),
('Juan Rodríguez', 'Ventas', 4200.00, '2020-01-25'),
('Ana Martínez', 'Marketing', 4000.00, '2022-05-30'),
('Pedro Sánchez', 'Finanzas', 5000.00, '2018-09-12'),
('Laura Díaz', 'TI', 4700.00, '2023-06-08'),
('José Ramírez', 'Recursos Humanos', 3900.00, '2017-12-01'),
('Sofía Herrera', 'Ventas', 4100.00, '2021-08-22'),
('Luis Torres', 'Marketing', 4300.00, '2020-10-10'),
('Elena Castro', 'Finanzas', 5200.00, '2019-04-15'),
('Diego Morales', 'TI', 4600.00, '2021-11-05'),
('Gabriela Rojas', 'Recursos Humanos', 3700.00, '2018-06-25'),
('Ricardo López', 'Ventas', 4150.00, '2022-02-18'),
('Daniela Flores', 'Marketing', 4050.00, '2023-07-13'),
('Miguel Vargas', 'Finanzas', 5100.00, '2017-03-20'),
('Patricia Mendoza', 'TI', 4550.00, '2019-09-30'),
('Javier Ortega', 'Recursos Humanos', 3850.00, '2020-12-05'),
('Camila Suárez', 'Ventas', 4250.00, '2021-01-17'),
('Fernando Guzmán', 'Marketing', 4350.00, '2023-04-22'),
('Andrea Paredes', 'Finanzas', 5300.00, '2018-11-10'),
('Roberto León', 'TI', 4800.00, '2020-07-14'),
('Natalia Acosta', 'Recursos Humanos', 3950.00, '2021-05-11'),
('Hugo Jiménez', 'Ventas', 4200.00, '2019-06-30'),
('Isabel Cárdenas', 'Marketing', 4400.00, '2022-09-18'),
('Martín Figueroa', 'Finanzas', 5000.00, '2017-08-24'),
('Rosa Vega', 'TI', 4600.00, '2023-01-29'),
('Francisco Solís', 'Recursos Humanos', 3700.00, '2016-12-12'),
('Valentina Álvarez', 'Ventas', 4300.00, '2018-05-21'),
('Emilio Navarro', 'Marketing', 4500.00, '2020-02-14'),
('Silvia Peña', 'Finanzas', 5400.00, '2021-07-16'),
('Gustavo Arrieta', 'TI', 4700.00, '2019-04-28'),
('Luciana Ramírez', 'Recursos Humanos', 3850.00, '2018-08-09'),
('Felipe Escobar', 'Ventas', 4150.00, '2023-03-05'),
('Diana Beltrán', 'Marketing', 4450.00, '2022-06-20'),
('Álvaro Montoya', 'Finanzas', 5050.00, '2017-02-01'),
('Carolina Silva', 'TI', 4650.00, '2020-10-25'),
('Cristian Fuentes', 'Recursos Humanos', 3900.00, '2021-08-03'),
('Mónica Cabrera', 'Ventas', 4100.00, '2019-11-14'),
('Raúl Valencia', 'Marketing', 4550.00, '2023-05-10'),
('Teresa Salgado', 'Finanzas', 5150.00, '2018-03-07'),
('Héctor Pino', 'TI', 4850.00, '2022-01-15'),
('Beatriz Lara', 'Recursos Humanos', 3950.00, '2016-07-28'),
('Oscar Bravo', 'Ventas', 4350.00, '2017-09-12'),
('Catalina Espinoza', 'Marketing', 4600.00, '2020-06-22'),
('Manuel Rivas', 'Finanzas', 5500.00, '2021-04-30'),
('Lorena Contreras', 'TI', 4750.00, '2019-12-18'),
('Sebastián Muñoz', 'Recursos Humanos', 4000.00, '2018-01-09'),
('Ángela Carrasco', 'Ventas', 4250.00, '2022-11-05'),
('Edgar Barrios', 'Marketing', 4700.00, '2023-09-17'),
('Cecilia Núñez', 'Finanzas', 5200.00, '2017-06-14');

CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
ciudad VARCHAR (100),
total_gastado NUMERIC (10,2),
ultima_compra DATE
);

INSERT INTO clientes (nombre, ciudad, total_gastado, ultima_compra) VALUES
('Carlos Pérez', 'Bogotá', 1500.75, '2024-01-10'),
('María González', 'Medellín', 2300.50, '2023-12-15'),
('Juan Rodríguez', 'Cali', 1800.25, '2024-02-05'),
('Ana Martínez', 'Barranquilla', 3200.80, '2023-11-20'),
('Pedro Sánchez', 'Cartagena', 2750.40, '2024-01-29'),
('Laura Díaz', 'Pereira', 1980.30, '2023-10-11'),
('José Ramírez', 'Bucaramanga', 3400.60, '2023-12-01'),
('Sofía Herrera', 'Manizales', 2900.90, '2024-01-05'),
('Luis Torres', 'Santa Marta', 1250.45, '2023-09-18'),
('Elena Castro', 'Ibagué', 4100.70, '2023-12-22'),
('Diego Morales', 'Bogotá', 3300.55, '2023-11-07'),
('Gabriela Rojas', 'Medellín', 2450.35, '2024-02-12'),
('Ricardo López', 'Cali', 3100.20, '2023-10-05'),
('Daniela Flores', 'Barranquilla', 1650.75, '2023-09-25'),
('Miguel Vargas', 'Cartagena', 2750.90, '2024-01-15'),
('Patricia Mendoza', 'Pereira', 1950.60, '2023-11-10'),
('Javier Ortega', 'Bucaramanga', 2300.80, '2023-12-05'),
('Camila Suárez', 'Manizales', 2800.95, '2024-01-22'),
('Fernando Guzmán', 'Santa Marta', 1400.45, '2023-10-30'),
('Andrea Paredes', 'Ibagué', 3200.25, '2024-02-08'),
('Roberto León', 'Bogotá', 3750.40, '2023-11-17'),
('Natalia Acosta', 'Medellín', 2500.10, '2023-09-28'),
('Hugo Jiménez', 'Cali', 4150.80, '2024-01-08'),
('Isabel Cárdenas', 'Barranquilla', 1800.25, '2023-10-15'),
('Martín Figueroa', 'Cartagena', 2850.50, '2023-12-29'),
('Rosa Vega', 'Pereira', 3100.90, '2024-02-18'),
('Francisco Solís', 'Bucaramanga', 2050.75, '2023-09-21'),
('Valentina Álvarez', 'Manizales', 2700.60, '2023-11-25'),
('Emilio Navarro', 'Santa Marta', 3250.30, '2024-01-02'),
('Silvia Peña', 'Ibagué', 1950.90, '2023-10-12'),
('Gustavo Arrieta', 'Bogotá', 4400.25, '2024-02-20'),
('Luciana Ramírez', 'Medellín', 2850.60, '2023-09-10'),
('Felipe Escobar', 'Cali', 3650.75, '2023-11-05'),
('Diana Beltrán', 'Barranquilla', 2150.50, '2024-01-28'),
('Álvaro Montoya', 'Cartagena', 2950.40, '2023-12-15'),
('Carolina Silva', 'Pereira', 1600.30, '2023-10-08'),
('Cristian Fuentes', 'Bucaramanga', 2800.90, '2024-02-14'),
('Mónica Cabrera', 'Manizales', 2500.75, '2023-09-29'),
('Raúl Valencia', 'Santa Marta', 3100.60, '2023-11-12'),
('Teresa Salgado', 'Ibagué', 1850.45, '2024-01-05'),
('Héctor Pino', 'Bogotá', 4200.20, '2023-12-21'),
('Beatriz Lara', 'Medellín', 2400.35, '2023-10-10'),
('Oscar Bravo', 'Cali', 3600.50, '2024-02-11'),
('Catalina Espinoza', 'Barranquilla', 2000.80, '2023-09-18'),
('Manuel Rivas', 'Cartagena', 2800.40, '2023-11-20'),
('Lorena Contreras', 'Pereira', 3300.75, '2024-01-01'),
('Sebastián Muñoz', 'Bucaramanga', 2150.90, '2023-10-05'),
('Ángela Carrasco', 'Manizales', 2700.60, '2024-02-07'),
('Edgar Barrios', 'Santa Marta', 3200.10, '2023-09-25'),
('Cecilia Núñez', 'Ibagué', 2250.80, '2023-11-17');

CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT,
producto_id INT,
cantidad INT,
fecha_pedido DATE,
FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
FOREIGN KEY (producto_id) REFERENCES productos (producto_id)
);

INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 3, 2, '2024-01-10'),
(2, 7, 1, '2023-12-15'),
(3, 2, 4, '2024-02-05'),
(4, 5, 3, '2023-11-20'),
(5, 1, 2, '2024-01-29'),
(6, 9, 5, '2023-10-11'),
(7, 4, 3, '2023-12-01'),
(8, 6, 2, '2024-01-05'),
(9, 10, 1, '2023-09-18'),
(10, 8, 4, '2023-12-22'),
(11, 3, 2, '2023-11-07'),
(12, 7, 3, '2024-02-12'),
(13, 2, 1, '2023-10-05'),
(14, 5, 4, '2023-09-25'),
(15, 1, 2, '2024-01-15'),
(16, 9, 3, '2023-11-10'),
(17, 4, 5, '2023-12-05'),
(18, 6, 2, '2024-01-22'),
(19, 10, 1, '2023-10-30'),
(20, 8, 3, '2024-02-08'),
(21, 3, 4, '2023-11-17'),
(22, 7, 2, '2023-09-28'),
(23, 2, 5, '2024-01-08'),
(24, 5, 1, '2023-10-15'),
(25, 1, 3, '2023-12-29'),
(26, 9, 4, '2024-02-18'),
(27, 4, 2, '2023-09-21'),
(28, 6, 5, '2023-11-25'),
(29, 10, 3, '2024-01-02'),
(30, 8, 1, '2023-10-12'),
(31, 3, 4, '2024-02-20'),
(32, 7, 2, '2023-09-10'),
(33, 2, 3, '2023-11-05'),
(34, 5, 5, '2024-01-28'),
(35, 1, 2, '2023-12-15'),
(36, 9, 4, '2023-10-08'),
(37, 4, 3, '2024-02-14'),
(38, 6, 1, '2023-09-29'),
(39, 10, 5, '2023-11-12'),
(40, 8, 2, '2024-01-05'),
(41, 3, 3, '2023-12-21'),
(42, 7, 4, '2023-10-10'),
(43, 2, 1, '2024-02-11'),
(44, 5, 5, '2023-09-18'),
(45, 1, 2, '2023-11-20'),
(46, 9, 3, '2024-01-01'),
(47, 4, 4, '2023-10-05'),
(48, 6, 1, '2024-02-07'),
(49, 10, 5, '2023-09-25'),
(50, 8, 2, '2023-11-17');

CREATE TABLE ventas (
venta_id SERIAL PRIMARY KEY,
producto_id INT,
cantidad INT,
fecha_venta DATE,
FOREIGN KEY (producto_id) REFERENCES productos (producto_id)
);

INSERT INTO ventas (producto_id, cantidad, fecha_venta) VALUES
(1, 2, '2023-03-15'),
(5, 7, '2024-06-20'),
(12, 1, '2022-12-11'),
(7, 10, '2023-09-05'),
(3, 3, '2024-01-30'),
(8, 8, '2022-11-22'),
(20, 5, '2024-07-14'),
(4, 12, '2023-08-03'),
(1, 4, '2022-10-18'),
(15, 6, '2024-02-25'),
(6, 3, '2023-12-07'),
(10, 9, '2022-07-29'),
(2, 1, '2024-09-09'),
(18, 7, '2023-05-15'),
(9, 5, '2022-08-20'),
(14, 2, '2024-03-03'),
(20, 10, '2023-11-01'),
(5, 6, '2022-06-12'),
(3, 4, '2024-05-18'),
(1, 8, '2023-04-25'),
(17, 12, '2022-09-30'),
(6, 3, '2024-07-06'),
(10, 7, '2023-02-14'),
(12, 5, '2022-11-11'),
(8, 2, '2024-08-22'),
(4, 9, '2023-01-28'),
(19, 4, '2022-07-05'),
(7, 6, '2024-10-09'),
(13, 11, '2023-06-17'),
(2, 3, '2022-12-04'),
(5, 5, '2024-04-01'),
(10, 7, '2023-10-10'),
(1, 1, '2022-05-20'),
(3, 8, '2024-09-21'),
(20, 10, '2023-03-07'),
(9, 4, '2022-10-02'),
(15, 6, '2024-06-15'),
(5, 2, '2023-07-13'),
(18, 9, '2022-04-27'),
(2, 5, '2024-11-05'),
(1, 7, '2023-08-18'),
(12, 1, '2022-03-22'),
(20, 10, '2024-12-12'),
(7, 4, '2023-11-29'),
(14, 6, '2022-02-10'),
(9, 3, '2024-01-06'),
(8, 8, '2023-09-14'),
(17, 12, '2022-06-30'),
(6, 2, '2024-05-27'),
(10, 7, '2023-04-11'),
(3, 5, '2022-09-19'),
(1, 10, '2024-07-24'),
(2, 3, '2023-02-02'),
(19, 6, '2022-12-18'),
(12, 9, '2024-10-30'),
(8, 2, '2023-06-21'),
(5, 8, '2022-07-07'),
(17, 12, '2024-03-11'),
(9, 1, '2023-01-19'),
(14, 7, '2022-05-15'),
(6, 5, '2024-08-09'),
(20, 10, '2023-11-06'),
(1, 4, '2022-03-28'),
(10, 6, '2024-12-05'),
(8, 3, '2023-10-14'),
(5, 8, '2022-02-17'),
(12, 11, '2024-07-13'),
(3, 2, '2023-05-29'),
(9, 7, '2022-04-01'),
(6, 5, '2024-09-17'),
(4, 9, '2023-08-06'),
(2, 1, '2022-01-21'),
(15, 10, '2024-11-24'),
(7, 4, '2023-07-15'),
(20, 6, '2022-12-10'),
(12, 3, '2024-06-02'),
(8, 8, '2023-04-12'),
(5, 12, '2022-07-28'),
(9, 2, '2024-05-01'),
(3, 7, '2023-01-10'),
(1, 5, '2022-10-07'),
(20, 10, '2024-08-21'),
(7, 4, '2023-09-03'),
(10, 6, '2022-06-22'),
(14, 1, '2024-12-15'),
(9, 8, '2023-11-08'),
(17, 11, '2022-02-27'),
(12, 2, '2024-07-31'),
(3, 9, '2023-05-16'),
(2, 5, '2022-08-20'),
(5, 7, '2024-03-05'),
(7, 3, '2023-10-30'),
(1, 10, '2022-09-11'),
(8, 4, '2024-06-25'),
(6, 6, '2023-07-04'),
(20, 1, '2022-05-02'),
(10, 8, '2024-10-08'),
(9, 12, '2023-02-26'),
(14, 2, '2022-11-14'),
(15, 7, '2024-08-05');

CREATE TABLE tickets_soporte (
ticket_id SERIAL PRIMARY KEY,
prioridad VARCHAR (100),
fecha_creacion DATE
);

INSERT INTO tickets_soporte (prioridad, fecha_creacion) VALUES
('Alta', '2024-01-15'),
('Media', '2023-05-20'),
('Baja', '2022-11-30'),
('Alta', '2024-06-10'),
('Media', '2023-09-25'),
('Baja', '2022-07-14'),
('Alta', '2024-02-05'),
('Media', '2023-04-18'),
('Baja', '2022-10-02'),
('Alta', '2024-08-21'),
('Media', '2023-06-30'),
('Baja', '2022-12-12'),
('Alta', '2024-03-11'),
('Media', '2023-07-07'),
('Baja', '2022-09-19'),
('Alta', '2024-10-05'),
('Media', '2023-11-10'),
('Baja', '2022-05-27'),
('Alta', '2024-07-15'),
('Media', '2023-02-22'),
('Baja', '2022-08-06'),
('Alta', '2024-04-03'),
('Media', '2023-12-09'),
('Baja', '2022-06-21'),
('Alta', '2024-05-29'),
('Media', '2023-03-15'),
('Baja', '2022-10-24'),
('Alta', '2024-09-08'),
('Media', '2023-08-12'),
('Baja', '2022-04-17'),
('Alta', '2024-01-22'),
('Media', '2023-07-25'),
('Baja', '2022-11-05'),
('Alta', '2024-06-17'),
('Media', '2023-10-03'),
('Baja', '2022-03-09'),
('Alta', '2024-02-28'),
('Media', '2023-05-01'),
('Baja', '2022-12-30'),
('Alta', '2024-08-14'),
('Media', '2023-09-04'),
('Baja', '2022-07-22'),
('Alta', '2024-03-07'),
('Media', '2023-06-19'),
('Baja', '2022-10-13'),
('Alta', '2024-05-10'),
('Media', '2023-04-27'),
('Baja', '2022-09-02'),
('Alta', '2024-07-31');

CREATE TABLE estudiantes (
estudiante_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
curso VARCHAR (100),
calificaciones INT,
fecha_ingreso DATE
);

INSERT INTO estudiantes (nombre, curso, calificaciones, fecha_ingreso) VALUES
('Carlos Gómez', 'Matemáticas', 85, '2022-02-15'),
('María López', 'Historia', 90, '2023-05-10'),
('José Ramírez', 'Física', 78, '2021-09-22'),
('Ana Torres', 'Química', 88, '2023-07-18'),
('Luis Fernández', 'Programación', 92, '2022-04-05'),
('Sofía Herrera', 'Matemáticas', 76, '2021-11-30'),
('Pedro Sánchez', 'Historia', 80, '2022-06-14'),
('Lucía Castillo', 'Física', 94, '2023-03-28'),
('Javier Morales', 'Química', 81, '2022-09-10'),
('Valentina Rojas', 'Programación', 87, '2021-08-25'),
('Fernando Díaz', 'Matemáticas', 79, '2023-10-05'),
('Gabriela Muñoz', 'Historia', 85, '2022-12-12'),
('Ricardo Vargas', 'Física', 90, '2021-07-07'),
('Elena Paredes', 'Química', 83, '2023-02-22'),
('Hugo Gutiérrez', 'Programación', 89, '2022-05-17'),
('Natalia Soto', 'Matemáticas', 88, '2021-09-30'),
('Manuel Medina', 'Historia', 77, '2023-04-11'),
('Carmen Aguilar', 'Física', 95, '2022-06-20'),
('Adrián Peña', 'Química', 74, '2021-10-08'),
('Paola Delgado', 'Programación', 91, '2023-08-19'),
('Martín Figueroa', 'Matemáticas', 82, '2022-01-14'),
('Andrea Vargas', 'Historia', 86, '2021-06-30'),
('Esteban Salinas', 'Física', 79, '2023-09-05'),
('Verónica Silva', 'Química', 88, '2022-07-09'),
('Roberto Castro', 'Programación', 94, '2021-12-17'),
('Marisol Ríos', 'Matemáticas', 81, '2023-05-25'),
('Daniel Ortega', 'Historia', 75, '2022-11-21'),
('Alejandra Espinoza', 'Física', 89, '2021-08-12'),
('Héctor Ponce', 'Química', 92, '2023-07-29'),
('Jessica León', 'Programación', 84, '2022-03-07'),
('Cristian Ramírez', 'Matemáticas', 90, '2021-10-22'),
('Raquel Acosta', 'Historia', 78, '2023-06-18'),
('Gonzalo Benítez', 'Física', 87, '2022-02-24'),
('Fabiola Guzmán', 'Química', 80, '2021-07-05'),
('Leonardo Parra', 'Programación', 85, '2023-12-10'),
('Mónica Flores', 'Matemáticas', 93, '2022-09-15'),
('Felipe Carrasco', 'Historia', 76, '2021-11-28'),
('Daniela Méndez', 'Física', 82, '2023-04-30'),
('Rodrigo Roldán', 'Química', 95, '2022-08-22'),
('Sara Zamora', 'Programación', 78, '2021-09-15'),
('Óscar Cortés', 'Matemáticas', 86, '2023-02-11'),
('Beatriz Molina', 'Historia', 92, '2022-05-08'),
('Tomás Villalobos', 'Física', 79, '2021-12-02'),
('Patricia Estrella', 'Química', 84, '2023-10-19'),
('Bruno Salgado', 'Programación', 77, '2022-06-25'),
('Lorena Bustos', 'Matemáticas', 90, '2021-04-20'),
('Diego Fuentes', 'Historia', 88, '2023-03-03'),
('Melisa Aravena', 'Física', 81, '2022-07-17'),
('Ángel Espinosa', 'Química', 89, '2021-05-29'),
('Isidora Saavedra', 'Programación', 83, '2023-09-14');

---EJERCICIO 1---
SELECT nombre, precio_unitario,
NTILE(4)OVER(ORDER BY precio_unitario DESC) AS ranking
FROM productos;

---EJERCICIO 2---
SELECT nombre AS empleados, salario,
NTILE(5)OVER(ORDER BY salario DESC) AS ranking
FROM empleados;

---EJERCICIO 3---
WITH ranking_clientes AS (
    SELECT c.nombre AS clientes, SUM(pr.precio_unitario * p.cantidad) AS total_gastado
	FROM pedidos p
	INNER JOIN productos pr ON p.producto_id = pr.producto_id
	INNER JOIN clientes c ON p.cliente_id = c.cliente_id
	GROUP BY c.nombre
)
SELECT clientes, total_gastado,
NTILE(3)OVER(ORDER BY total_gastado DESC) AS ranking
FROM ranking_clientes;

---EJERCICIO 4---
SELECT nombre, curso, calificaciones,
NTILE(2)OVER(ORDER BY calificaciones DESC) AS ranking_calificaciones
FROM estudiantes;

---EJERCICIO 5---
SELECT pr.nombre AS productos, SUM(p.cantidad) AS cantidad_total,
NTILE(6)OVER(ORDER BY SUM(p.cantidad)DESC) AS ranking
FROM productos pr
INNER JOIN pedidos p ON pr.producto_id = p.producto_id
GROUP BY pr.nombre;

---EJERCICIO 6---
SELECT categoria, nombre, precio_unitario,
NTILE(3)OVER(PARTITION BY categoria ORDER BY precio_unitario DESC) AS ranking
FROM productos;

---EJERCICIO 7---
SELECT c.ciudad, c.nombre, SUM(p.cliente_id) AS cantidad_total,
NTILE(4)OVER(PARTITION BY ciudad ORDER BY SUM(p.cliente_id)DESC) AS ranking
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.ciudad,c.nombre;

---EJERCICIO 8---
SELECT departamento, nombre, salario,
NTILE(5)OVER(PARTITION BY departamento ORDER BY salario DESC) AS ranking
FROM empleados;

---EJERCICIO 9---
WITH ventas_por_mes AS (
    SELECT 
        EXTRACT(MONTH FROM fecha_venta) AS mes, 
        SUM(cantidad) AS total_venta
    FROM ventas 
    GROUP BY EXTRACT(MONTH FROM fecha_venta)
)
SELECT mes, total_venta,
       NTILE(4) OVER(ORDER BY total_venta DESC) AS ranking
FROM ventas_por_mes;


---EJERCICIO 10---
SELECT prioridad, 
NTILE(2)OVER(PARTITION BY prioridad ORDER BY prioridad)
FROM tickets_soporte;

---EJERCICIO 11---
SELECT fecha_pedido,
EXTRACT(QUARTER FROM fecha_pedido) AS trimestre,
NTILE(4)OVER(ORDER BY EXTRACT (QUARTER FROM fecha_pedido) ASC) AS ranking
FROM pedidos;

---EJERCICIO 12---
SELECT  SUM (cantidad) AS cantidad_vendida,
EXTRACT (MONTH FROM fecha_venta) AS Mes,
NTILE(3) OVER(ORDER BY EXTRACT (MONTH FROM fecha_venta)ASC) AS ranking
FROM ventas
GROUP BY EXTRACT(MONTH FROM fecha_venta);

---EJERCICIO 13---
SELECT pr.nombre,
EXTRACT (YEAR FROM p.fecha_pedido) AS año,
SUM (p.cantidad) AS cantidad_total,
NTILE(5)OVER(PARTITION BY EXTRACT(YEAR FROM p.fecha_pedido) ORDER BY SUM(p.cantidad)DESC) AS ranking
FROM pedidos p
INNER JOIN productos pr
ON p.producto_id = pr.producto_id
GROUP BY pr.nombre, EXTRACT(YEAR FROM fecha_pedido);

---EJERCICIO 14---
SELECT c.nombre, MAX(p.fecha_pedido) AS ultima_compra,
NTILE(4)OVER(ORDER BY MAX(p.fecha_pedido) ASC) AS ranking
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id
GROUP BY c.nombre;


