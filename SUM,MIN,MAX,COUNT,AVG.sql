CREATE TABLE ventas (
    venta_id SERIAL PRIMARY KEY,
    tienda_id INT,
    cliente_id INT,
    fecha_venta DATE,
    monto DECIMAL(10,2),
    cantidad INT,
    pais VARCHAR(50),
    categoria_producto VARCHAR(50)
);

CREATE TABLE empleados (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    fecha_contratacion DATE
);

CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio_unitario DECIMAL(10,2),
    cantidad_vendida INT
);

CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(50),
    total_gastado DECIMAL(10,2)
);

CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    monto_total DECIMAL(10,2),
    fecha_pedido DATE
);

CREATE TABLE peliculas (
    pelicula_id SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    duracion_minutos INT
);

CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    curso VARCHAR(50),
    promedio DECIMAL(5,2)
);

-- Insertar datos en la tabla ventas
INSERT INTO ventas (tienda_id, cliente_id, fecha_venta, monto, cantidad, pais, categoria_producto) VALUES
(1, 10, '2023-01-15', 250.75, 2, 'México', 'Electrónica'),
(2, 20, '2023-02-10', 150.00, 1, 'Argentina', 'Ropa'),
(3, 30, '2023-03-05', 340.50, 3, 'España', 'Hogar'),
(4, 15, '2023-04-12', 90.00, 5, 'Chile', 'Alimentos'),
(5, 25, '2023-05-22', 210.30, 2, 'Perú', 'Deportes'),
(6, 35, '2023-06-18', 500.00, 4, 'Colombia', 'Electrodomésticos'),
(7, 40, '2023-07-08', 125.99, 1, 'Brasil', 'Muebles'),
(8, 12, '2023-08-30', 75.25, 3, 'Ecuador', 'Hogar'),
(9, 22, '2023-09-15', 60.80, 2, 'Uruguay', 'Tecnología'),
(10, 32, '2023-10-05', 300.00, 1, 'Paraguay', 'Salud'),
(11, 15, '2023-11-12', 215.45, 3, 'México', 'Ropa'),
(12, 18, '2023-12-22', 89.99, 4, 'Argentina', 'Alimentos'),
(13, 22, '2024-01-05', 430.25, 2, 'Chile', 'Electrónica'),
(14, 33, '2024-02-11', 150.75, 1, 'España', 'Hogar'),
(15, 45, '2024-03-08', 600.00, 5, 'Perú', 'Deportes'),
(16, 50, '2024-04-15', 320.99, 2, 'Colombia', 'Electrodomésticos'),
(17, 5, '2024-05-22', 450.75, 3, 'Brasil', 'Muebles'),
(18, 8, '2024-06-18', 75.50, 2, 'Ecuador', 'Hogar'),
(19, 12, '2024-07-12', 95.99, 1, 'Uruguay', 'Tecnología'),
(20, 25, '2024-08-10', 120.00, 4, 'Paraguay', 'Salud'),
(21, 30, '2024-09-05', 310.25, 3, 'México', 'Electrónica'),
(22, 40, '2024-10-22', 99.99, 2, 'Argentina', 'Ropa'),
(23, 15, '2024-11-11', 79.50, 5, 'Chile', 'Alimentos'),
(24, 20, '2024-12-30', 410.30, 1, 'España', 'Deportes'),
(25, 35, '2025-01-15', 550.00, 4, 'Colombia', 'Electrodomésticos'),
(26, 48, '2025-02-05', 205.99, 2, 'Brasil', 'Muebles'),
(27, 5, '2025-03-08', 125.75, 3, 'Ecuador', 'Hogar'),
(28, 18, '2025-04-12', 50.00, 1, 'Uruguay', 'Tecnología'),
(29, 22, '2025-05-10', 180.00, 4, 'Paraguay', 'Salud'),
(30, 33, '2025-06-20', 320.75, 2, 'México', 'Electrónica'),
(31, 45, '2025-07-15', 99.00, 5, 'Argentina', 'Ropa'),
(32, 10, '2025-08-30', 79.99, 3, 'Chile', 'Alimentos'),
(33, 20, '2025-09-18', 290.50, 2, 'España', 'Deportes'),
(34, 35, '2025-10-10', 600.25, 1, 'Colombia', 'Electrodomésticos'),
(35, 40, '2025-11-22', 450.99, 4, 'Brasil', 'Muebles'),
(36, 5, '2025-12-15', 105.75, 3, 'Ecuador', 'Hogar'),
(37, 8, '2026-01-05', 79.00, 2, 'Uruguay', 'Tecnología'),
(38, 12, '2026-02-12', 220.00, 5, 'Paraguay', 'Salud'),
(39, 25, '2026-03-08', 310.99, 1, 'México', 'Electrónica'),
(40, 30, '2026-04-15', 120.50, 4, 'Argentina', 'Ropa'),
(41, 45, '2026-05-12', 89.75, 3, 'Chile', 'Alimentos'),
(42, 50, '2026-06-22', 410.30, 2, 'España', 'Deportes'),
(43, 15, '2026-07-15', 590.00, 5, 'Colombia', 'Electrodomésticos'),
(44, 40, '2026-08-30', 150.99, 3, 'Brasil', 'Muebles'),
(45, 5, '2026-09-10', 99.75, 2, 'Ecuador', 'Hogar'),
(46, 18, '2026-10-05', 85.00, 1, 'Uruguay', 'Tecnología'),
(47, 22, '2026-11-12', 175.00, 4, 'Paraguay', 'Salud'),
(48, 33, '2026-12-08', 300.75, 2, 'México', 'Electrónica'),
(49, 45, '2027-01-15', 120.99, 5, 'Argentina', 'Ropa'),
(50, 50, '2027-02-01', 99.99, 1, 'Colombia', 'Deportes');

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, departamento, salario, fecha_contratacion) VALUES
('Juan Pérez', 'Recursos Humanos', 3500.00, '2020-01-15'),
('Ana Gómez', 'Finanzas', 4200.00, '2019-05-22'),
('Carlos López', 'TI', 5000.00, '2021-07-10'),
('María Rodríguez', 'Marketing', 3800.00, '2018-03-18'),
('José Fernández', 'Ventas', 4500.00, '2022-06-30'),
('Laura Martínez', 'Recursos Humanos', 3700.00, '2020-09-05'),
('David Sánchez', 'Finanzas', 4300.00, '2017-12-10'),
('Sofía Herrera', 'TI', 5200.00, '2021-11-22'),
('Miguel Torres', 'Marketing', 3900.00, '2018-08-25'),
('Lucía Ramírez', 'Ventas', 4600.00, '2023-02-14'),
('Pablo Díaz', 'Recursos Humanos', 3600.00, '2019-04-20'),
('Valentina Ruiz', 'Finanzas', 4400.00, '2020-07-12'),
('Andrés Castillo', 'TI', 5300.00, '2016-10-09'),
('Gabriela Morales', 'Marketing', 4000.00, '2017-11-30'),
('Javier Núñez', 'Ventas', 4700.00, '2022-03-18'),
('Isabel Peña', 'Recursos Humanos', 3750.00, '2018-06-25'),
('Manuel Ortiz', 'Finanzas', 4100.00, '2019-09-14'),
('Elena Vázquez', 'TI', 5400.00, '2021-01-20'),
('Fernando Ríos', 'Marketing', 4100.00, '2017-05-08'),
('Camila Jiménez', 'Ventas', 4800.00, '2023-04-30'),
('Diego Guzmán', 'Recursos Humanos', 3850.00, '2020-10-11'),
('Raquel Herrera', 'Finanzas', 4250.00, '2019-12-07'),
('Tomás Paredes', 'TI', 5500.00, '2016-04-22'),
('Marta Salazar', 'Marketing', 4200.00, '2018-07-19'),
('Esteban Figueroa', 'Ventas', 4900.00, '2022-09-25'),
('Daniela Mendoza', 'Recursos Humanos', 3900.00, '2021-02-14'),
('Hugo León', 'Finanzas', 4350.00, '2019-11-30'),
('Patricia Castro', 'TI', 5600.00, '2015-08-12'),
('Alberto Silva', 'Marketing', 4300.00, '2017-03-27'),
('Beatriz Navarro', 'Ventas', 5000.00, '2023-06-10'),
('Ricardo Espinoza', 'Recursos Humanos', 3950.00, '2018-05-05'),
('Marina Campos', 'Finanzas', 4450.00, '2020-09-18'),
('Ernesto Arias', 'TI', 5700.00, '2014-07-25'),
('Victoria Peña', 'Marketing', 4400.00, '2016-10-30'),
('Francisco Solís', 'Ventas', 5100.00, '2022-12-15'),
('Rosa Rojas', 'Recursos Humanos', 4000.00, '2019-02-20'),
('Sergio Moya', 'Finanzas', 4550.00, '2018-06-28'),
('Angela Barrera', 'TI', 5800.00, '2013-09-11'),
('Fabián Méndez', 'Marketing', 4500.00, '2015-12-05'),
('Julia Cordero', 'Ventas', 5200.00, '2023-08-01'),
('Cristian Delgado', 'Recursos Humanos', 4100.00, '2021-07-14'),
('Adriana Velasco', 'Finanzas', 4650.00, '2017-01-05'),
('Gustavo Iglesias', 'TI', 5900.00, '2012-11-30'),
('Verónica Acosta', 'Marketing', 4600.00, '2016-02-25'),
('Samuel Villalobos', 'Ventas', 5300.00, '2022-10-18'),
('Elisa Fajardo', 'Recursos Humanos', 4200.00, '2020-04-08'),
('Álvaro Ibáñez', 'Finanzas', 4750.00, '2019-05-22'),
('Carolina Duarte', 'TI', 6000.00, '2011-12-01'),
('Emilio Chávez', 'Marketing', 4700.00, '2015-04-15'),
('Luisa Cortés', 'Ventas', 5400.00, '2023-11-05');

-- Insertar datos en la tabla productos
INSERT INTO productos (nombre, categoria, precio_unitario, cantidad_vendida) VALUES
('Laptop Dell', 'Electrónica', 1200.50, 150),
('Mouse Logitech', 'Accesorios', 25.99, 300),
('Teclado Mecánico', 'Accesorios', 89.99, 120),
('Monitor Samsung', 'Electrónica', 250.00, 80),
('Impresora HP', 'Oficina', 150.75, 60),
('Smartphone Samsung', 'Telefonía', 999.99, 200),
('Tablet Apple', 'Electrónica', 799.99, 90),
('Auriculares Sony', 'Accesorios', 129.50, 170),
('Disco Duro 1TB', 'Almacenamiento', 55.99, 220),
('Memoria USB 64GB', 'Almacenamiento', 15.50, 350),
('Cámara Canon', 'Fotografía', 650.00, 40),
('Tripié Fotográfico', 'Fotografía', 120.99, 75),
('Cargador Universal', 'Accesorios', 19.99, 280),
('Silla Ergonómica', 'Oficina', 220.50, 50),
('Escritorio de Madera', 'Oficina', 350.00, 30),
('Router TP-Link', 'Redes', 59.99, 90),
('Cable HDMI 2m', 'Accesorios', 9.99, 400),
('Lámpara LED', 'Iluminación', 25.00, 180),
('Altavoces Bluetooth', 'Audio', 75.50, 130),
('Tarjeta Gráfica RTX 3060', 'Computación', 450.00, 70),
('Fuente de Poder 750W', 'Computación', 110.00, 95),
('Placa Base ASUS', 'Computación', 220.00, 65),
('SSD 500GB', 'Almacenamiento', 80.50, 150),
('Ventilador para PC', 'Computación', 35.99, 125),
('Micrófono Profesional', 'Audio', 199.99, 85),
('Webcam HD', 'Accesorios', 49.99, 190),
('Mochila para Laptop', 'Accesorios', 45.50, 140),
('Reloj Inteligente', 'Telefonía', 250.00, 110),
('Cinta LED RGB', 'Iluminación', 22.50, 160),
('Parlante Portátil', 'Audio', 99.99, 100),
('Taza Personalizada', 'Hogar', 12.50, 220),
('Ventilador de Torre', 'Climatización', 150.00, 80),
('Caja de Herramientas', 'Hogar', 89.99, 95),
('Set de Destornilladores', 'Herramientas', 25.00, 180),
('Cafetera Automática', 'Electrodomésticos', 180.00, 70),
('Licuadora Oster', 'Electrodomésticos', 99.50, 85),
('Aspiradora Robot', 'Electrodomésticos', 250.00, 60),
('Freidora de Aire', 'Electrodomésticos', 130.00, 75),
('Termo de Acero', 'Hogar', 20.00, 200),
('Sierra Eléctrica', 'Herramientas', 180.00, 50),
('Destornillador Eléctrico', 'Herramientas', 65.99, 90),
('Cerradura Digital', 'Seguridad', 150.00, 45),
('Cámara de Seguridad', 'Seguridad', 220.00, 55),
('Purificador de Agua', 'Electrodomésticos', 300.00, 40),
('Cargador Solar', 'Accesorios', 35.00, 130),
('Mini Proyector', 'Electrónica', 190.00, 75),
('Batería Externa 20000mAh', 'Accesorios', 45.50, 150),
('Juego de Cuchillos', 'Cocina', 55.00, 100);

-- Insertar datos en la tabla clientes
INSERT INTO clientes (nombre, ciudad, total_gastado) VALUES
('Juan Pérez', 'Bogotá', 1200.50),
('María Gómez', 'Medellín', 850.75),
('Carlos Ramírez', 'Cali', 940.00),
('Andrea López', 'Barranquilla', 1350.25),
('Luis Torres', 'Cartagena', 765.80),
('Sofía Herrera', 'Manizales', 500.90),
('Fernando Díaz', 'Bucaramanga', 1100.30),
('Ana Castillo', 'Pereira', 900.50),
('Daniel Muñoz', 'Santa Marta', 1500.75),
('Camila Ríos', 'Cúcuta', 620.40),
('Jorge León', 'Villavicencio', 820.20),
('Natalia Vargas', 'Ibagué', 770.10),
('Ricardo Sánchez', 'Armenia', 680.00),
('Paola Cárdenas', 'Neiva', 890.60),
('Oscar Pineda', 'Popayán', 1000.90),
('Elena Suárez', 'Pasto', 1100.50),
('Sebastián Rojas', 'Tunja', 945.30),
('Valentina Méndez', 'Florencia', 720.00),
('Alejandro Guzmán', 'Quibdó', 830.45),
('Gabriela Montoya', 'Riohacha', 760.35),
('Hugo Ortega', 'Leticia', 980.00),
('Isabela Pardo', 'Yopal', 890.20),
('Diego Rubio', 'Sincelejo', 1025.60),
('Clara Velázquez', 'Montería', 775.30),
('Fabián Medina', 'Valledupar', 880.75),
('Laura Estrada', 'San Andrés', 970.40),
('Martín Peña', 'Tunja', 640.00),
('Patricia Serrano', 'Mocoa', 695.50),
('Julio Mendoza', 'Puerto Carreño', 875.90),
('Renata Fernández', 'Mitú', 1045.70),
('Germán Quiroga', 'Inírida', 1100.25),
('Tatiana Morales', 'Arauca', 925.00),
('Samuel Barreto', 'Puerto Inírida', 1005.30),
('Esteban Álvarez', 'Mompox', 785.20),
('Manuela Ospina', 'Aguachica', 715.60),
('Raúl Cardona', 'Chiquinquirá', 850.45),
('Antonia Salgado', 'Magangué', 975.80),
('Mauricio Correa', 'Honda', 890.00),
('Silvia Muñoz', 'Sogamoso', 930.25),
('Rodrigo Gil', 'Ipiales', 780.40),
('Beatriz Ramos', 'San José del Guaviare', 1020.90),
('Álvaro Navarro', 'Pamplona', 845.70),
('Carmen Ortiz', 'Guapi', 910.30),
('Javier Benítez', 'El Banco', 1055.40),
('Gloria Chaves', 'Pitalito', 950.20),
('Horacio Parra', 'Santa Rosa de Cabal', 990.00),
('Luciana Arango', 'Tuluá', 880.90),
('Bernardo Pacheco', 'Girardot', 1075.60),
('Fernanda Lozano', 'Apartadó', 920.40),
('Emiliano Vargas', 'Chía', 970.25);

-- Insertar datos en la tabla pedidos
INSERT INTO pedidos (cliente_id, producto_id, cantidad, monto_total, fecha_pedido) VALUES
(1, 5, 2, 120.50, '2024-01-15'),
(2, 10, 1, 60.75, '2024-02-20'),
(3, 15, 4, 250.00, '2024-03-05'),
(4, 20, 3, 180.25, '2024-04-10'),
(5, 25, 2, 95.80, '2024-05-15'),
(6, 30, 5, 300.90, '2024-06-20'),
(7, 35, 1, 75.30, '2024-07-25'),
(8, 40, 3, 200.50, '2024-08-30'),
(9, 45, 2, 150.75, '2024-09-05'),
(10, 50, 4, 320.40, '2024-10-10'),
(11, 5, 1, 110.20, '2024-11-15'),
(12, 10, 3, 230.10, '2024-12-20'),
(13, 15, 2, 180.00, '2025-01-25'),
(14, 20, 5, 350.60, '2025-02-28'),
(15, 25, 4, 290.90, '2025-03-10'),
(16, 30, 1, 130.50, '2025-04-15'),
(17, 35, 3, 170.30, '2025-05-20'),
(18, 40, 2, 250.00, '2025-06-25'),
(19, 45, 4, 310.45, '2025-07-30'),
(20, 50, 5, 390.35, '2025-08-05'),
(21, 5, 2, 140.00, '2025-09-10'),
(22, 10, 1, 100.20, '2025-10-15'),
(23, 15, 3, 270.60, '2025-11-20'),
(24, 20, 4, 290.30, '2025-12-25'),
(25, 25, 5, 400.75, '2026-01-30'),
(26, 30, 1, 150.40, '2026-02-05'),
(27, 35, 3, 190.00, '2026-03-10'),
(28, 40, 2, 260.90, '2026-04-15'),
(29, 45, 4, 320.25, '2026-05-20'),
(30, 50, 5, 410.00, '2026-06-25'),
(31, 5, 1, 120.30, '2026-07-30'),
(32, 10, 3, 280.50, '2026-08-05'),
(33, 15, 2, 210.40, '2026-09-10'),
(34, 20, 5, 390.20, '2026-10-15'),
(35, 25, 4, 340.90, '2026-11-20'),
(36, 30, 1, 130.75, '2026-12-25'),
(37, 35, 3, 180.40, '2027-01-30'),
(38, 40, 2, 270.90, '2027-02-05'),
(39, 45, 4, 350.25, '2027-03-10'),
(40, 50, 5, 450.00, '2027-04-15'),
(41, 5, 2, 140.30, '2027-05-20'),
(42, 10, 1, 110.50, '2027-06-25'),
(43, 15, 3, 290.40, '2027-07-30'),
(44, 20, 4, 370.20, '2027-08-05'),
(45, 25, 5, 430.90, '2027-09-10'),
(46, 30, 1, 160.75, '2027-10-15'),
(47, 35, 3, 200.40, '2027-11-20'),
(48, 40, 2, 290.90, '2027-12-25'),
(49, 45, 4, 380.25, '2028-01-30'),
(50, 50, 5, 470.00, '2028-02-05');

-- Insertar datos en la tabla peliculas
INSERT INTO peliculas (titulo, duracion_minutos) VALUES
('El Padrino', 175),
('Titanic', 195),
('Interestelar', 169),
('El Señor de los Anillos: El Retorno del Rey', 201),
('Pulp Fiction', 154),
('Avatar', 162),
('Gladiador', 155),
('Inception', 148),
('Forrest Gump', 142),
('Matrix', 136),
('Joker', 122),
('El Rey León', 88),
('Toy Story', 81),
('Jurassic Park', 127),
('Los Vengadores', 143),
('Coco', 105),
('Frozen', 102),
('Shrek', 90),
('Buscando a Nemo', 100),
('Ratatouille', 111),
('La La Land', 128),
('El Gran Showman', 105),
('Batman: El Caballero de la Noche', 152),
('Deadpool', 108),
('Los Increíbles', 115),
('Up', 96),
('WALL-E', 98),
('Harry Potter y la Piedra Filosofal', 152),
('Spider-Man: Un nuevo universo', 117),
('Doctor Strange', 115),
('Capitán América: Civil War', 147),
('El Hobbit: Un viaje inesperado', 169),
('IT', 135),
('El Exorcista', 122),
('Cazafantasmas', 107),
('El Código Da Vinci', 149),
('Los Juegos del Hambre', 142),
('Divergente', 139),
('El Laberinto del Fauno', 118),
('Intensamente', 95),
('Aladdín', 90),
('Dumbo', 64),
('Maléfica', 97),
('La Bella y la Bestia', 84),
('Moana', 107),
('Tarzán', 88),
('Hércules', 93),
('Mulan', 87),
('Pinocho', 88),
('Bambi', 70);

-- Insertar datos en la tabla estudiantes
INSERT INTO estudiantes (nombre, curso, promedio) VALUES
('Juan Pérez', 'Matemáticas', 8.5),
('María López', 'Física', 9.2),
('Carlos Gómez', 'Química', 7.8),
('Ana Ramírez', 'Biología', 8.9),
('Luis Torres', 'Historia', 9.5),
('Elena Ruiz', 'Geografía', 8.3),
('Javier Morales', 'Literatura', 7.5),
('Patricia Fernández', 'Filosofía', 8.7),
('Ricardo Ortega', 'Informática', 9.1),
('Carmen Sánchez', 'Arte', 7.9),
('Hugo Castro', 'Música', 8.6),
('Sofía Delgado', 'Deporte', 9.0),
('Mateo Herrera', 'Economía', 8.2),
('Valentina Chávez', 'Psicología', 9.3),
('Andrés Navarro', 'Sociología', 7.6),
('Isabella Ríos', 'Ciencias Políticas', 8.8),
('Martín Vargas', 'Derecho', 9.4),
('Camila Peña', 'Administración', 8.1),
('Diego Medina', 'Marketing', 7.7),
('Daniela Estrada', 'Turismo', 8.9),
('Emilio Guzmán', 'Gastronomía', 9.2),
('Fernanda León', 'Diseño Gráfico', 8.4),
('Gabriel Paredes', 'Arquitectura', 9.0),
('Ximena Correa', 'Medicina', 7.8),
('Santiago Rojas', 'Enfermería', 8.6),
('Victoria Lara', 'Veterinaria', 9.1),
('David Figueroa', 'Agronomía', 7.5),
('Regina Cordero', 'Odontología', 8.3),
('Álvaro Espinoza', 'Ingeniería Civil', 9.5),
('Diana Beltrán', 'Ingeniería Mecánica', 7.9),
('Oscar Núñez', 'Ingeniería Electrónica', 8.7),
('Luciana Suárez', 'Ingeniería Química', 9.3),
('Maximiliano Godoy', 'Ingeniería de Sistemas', 8.2),
('Margarita Duarte', 'Astronomía', 9.4),
('Pablo Serrano', 'Biotecnología', 7.6),
('Julieta Ramírez', 'Ciencias de la Computación', 8.8),
('Leonardo Tapia', 'Estadística', 9.0),
('Antonia Villalobos', 'Lingüística', 8.1),
('Francisco Aguilar', 'Pedagogía', 7.7),
('Constanza Zamora', 'Trabajo Social', 8.9),
('Tomás Espinosa', 'Relaciones Internacionales', 9.2),
('Renata Salinas', 'Comunicación', 8.4),
('Sebastián Vera', 'Periodismo', 9.0),
('Martina Flores', 'Antropología', 7.8),
('Bruno Sandoval', 'Ciencias Ambientales', 8.6),
('Daniel Vázquez', 'Ingeniería Biomédica', 9.1),
('Gabriela Herrera', 'Ciencias del Mar', 7.5),
('Joaquín Ríos', 'Geología', 8.3),
('Nicole Fuentes', 'Fonoaudiología', 9.5);

---EJERCICIO 1---
SELECT c.nombre, v.fecha_venta, v.monto,
SUM(v.monto)OVER(PARTITION BY c.nombre ORDER BY v.fecha_venta ASC) AS total_compra
FROM clientes c
INNER JOIN ventas v
ON c.cliente_id = v.cliente_id;

---EJERCICIO 2---
SELECT departamento, nombre, salario,
AVG(salario)OVER(PARTITION BY departamento) AS salario_promedio
FROM empleados;

---EJERCICIO 3---
SELECT c.nombre AS cliente, pr.nombre AS productos,
COUNT(p.producto_id)OVER(PARTITION BY c.nombre) AS total_pedidos
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id
INNER JOIN productos pr ON p.producto_id = pr.producto_id;

---EJERCICIO 4---
SELECT departamento, nombre, salario, 
MAX(salario)OVER(PARTITION BY departamento) AS salario_maximo,
MIN(salario)OVER(PARTITION BY departamento) AS salario_minimo
FROM empleados;

---EJERCICIO 5---
SELECT categoria, nombre, cantidad_vendida,
SUM(cantidad_vendida)OVER(PARTITION BY categoria) total_venta
FROM productos;

---EJERCICIO 6---
SELECT nombre AS clientes, SUM(total_gastado) AS total_gastado,
NTILE(3)OVER(ORDER BY SUM(total_gastado)DESC) AS clasificacion
FROM clientes
GROUP BY nombre;

---EJERCICIO 7---
SELECT DISTINCT c.nombre AS cliente, 
MAX(v.fecha_venta) OVER(PARTITION BY c.nombre) AS ultima_compra
FROM clientes c
INNER JOIN ventas v
ON c.cliente_id = v.cliente_id;

---EJERCICIO 8---
SELECT EXTRACT(MONTH FROM fecha_venta) AS Mes, monto,
SUM(monto)OVER(PARTITION BY EXTRACT (MONTH FROM fecha_venta)) AS ventas_acumuladas
FROM ventas;

---EJERCICIO 9---
SELECT nombre, departamento, salario, 
DENSE_RANK()OVER(PARTITION BY departamento ORDER BY salario DESC) AS ranking
FROM empleados;

---EJERCICIO 10---
SELECT c.nombre, p.fecha_pedido,
MAX(p.monto_total)OVER(PARTITION BY c.nombre) AS venta_cara
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id;

---EJERCICIO 11---
SELECT tienda_id, fecha_venta, monto,
SUM(monto)OVER(PARTITION BY tienda_id) AS total_monto
FROM ventas;

---EJERCICIO 12---
WITH promedio_ventas AS (
    SELECT tienda_id, SUM(monto * cantidad) AS monto_total
    FROM ventas
	GROUP BY tienda_id
)
SELECT tienda_id, monto_total,
AVG(monto_total) OVER(ORDER BY monto_total ASC)
FROM promedio_ventas;

---EJERCICIO 13---
SELECT titulo, duracion_minutos,
NTILE(4)OVER(ORDER BY duracion_minutos ASC) AS ranking
FROM peliculas;

---EJERCICIO 14---
WITH ranking_paises AS (
    SELECT 
        pais, 
        categoria_producto, 
        SUM(monto) AS total_ventas,
        RANK() OVER (PARTITION BY categoria_producto ORDER BY SUM(monto) DESC) AS ranking
    FROM ventas
    GROUP BY pais, categoria_producto
)
SELECT pais, categoria_producto, total_ventas
FROM ranking_paises
WHERE ranking = 1;

---EJERCICIO 15---
SELECT EXTRACT(QUARTER FROM fecha_venta) AS trimestre, monto,
SUM(monto)OVER(PARTITION BY EXTRACT(QUARTER FROM fecha_venta) ORDER BY monto) AS monto_total
FROM ventas;

---EJERCICIO 16---
WITH clientes_ciudad AS (
    SELECT ciudad, nombre, total_gastado,
	DENSE_RANK()OVER(PARTITION BY ciudad ORDER BY total_gastado DESC) AS ranking
	FROM clientes
)
SELECT ciudad, nombre, total_gastado, ranking
FROM clientes_ciudad
WHERE ranking <= 3;

---EJERCICIO 17---
SELECT estudiante_id, nombre, promedio, 
NTILE(3)OVER(ORDER BY promedio DESC)
FROM estudiantes;

---EJERCICIO 18---
WITH promedio AS (
    SELECT
	EXTRACT (YEAR FROM fecha_venta) AS año,
	EXTRACT (MONTH FROM fecha_venta) AS mes,
	monto
	FROM ventas
)
SELECT año, mes, monto,
AVG(monto)OVER(PARTITION BY año)
FROM promedio;
