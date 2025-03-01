---tabla clientes---
CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR(100),
ciudad VARCHAR (100)
);

---datos clientes---
insert into clientes (nombre, ciudad) values ('Lee', 'Castêlo');
insert into clientes (nombre, ciudad) values ('Catrina', 'Saransk');
insert into clientes (nombre, ciudad) values ('Robinette', 'Brikama');
insert into clientes (nombre, ciudad) values ('Ethelda', 'Unión');
insert into clientes (nombre, ciudad) values ('Bonny', 'Arruda dos Vinhos');
insert into clientes (nombre, ciudad) values ('Callie', 'Zarzal');
insert into clientes (nombre, ciudad) values ('Cyrus', 'Huangtan');
insert into clientes (nombre, ciudad) values ('Laureen', 'Landim');
insert into clientes (nombre, ciudad) values ('Alis', 'Zhangfang');
insert into clientes (nombre, ciudad) values ('Claus', 'Goryachevodskiy');
insert into clientes (nombre, ciudad) values ('Gayle', 'Pedro II');
insert into clientes (nombre, ciudad) values ('Fifi', 'Wuqishan');
insert into clientes (nombre, ciudad) values ('Reider', 'Kathu');
insert into clientes (nombre, ciudad) values ('Vivia', 'Nanqiao');
insert into clientes (nombre, ciudad) values ('Cyril', 'Shums’k');
insert into clientes (nombre, ciudad) values ('Amabelle', 'Zhangjiafan');
insert into clientes (nombre, ciudad) values ('Baudoin', 'Qingyuan');
insert into clientes (nombre, ciudad) values ('Layton', 'Obrera');
insert into clientes (nombre, ciudad) values ('Cassaundra', 'Guangshan');
insert into clientes (nombre, ciudad) values ('Goldina', 'Bucay');
insert into clientes (nombre, ciudad) values ('Meaghan', 'Ampahana');
insert into clientes (nombre, ciudad) values ('Lew', 'Itapema');
insert into clientes (nombre, ciudad) values ('Mace', 'Xinan');
insert into clientes (nombre, ciudad) values ('Waylin', 'Lagos');
insert into clientes (nombre, ciudad) values ('Nina', 'Qinhong');
insert into clientes (nombre, ciudad) values ('Wadsworth', 'Omboué');
insert into clientes (nombre, ciudad) values ('Pierce', 'Courelas Bravas');
insert into clientes (nombre, ciudad) values ('Thadeus', 'Dianshui');
insert into clientes (nombre, ciudad) values ('Ignace', 'Nis’oni');
insert into clientes (nombre, ciudad) values ('Ebonee', 'Miribanteng');
insert into clientes (nombre, ciudad) values ('Kelby', 'Tonghu');
insert into clientes (nombre, ciudad) values ('Ellene', 'Montecillo');
insert into clientes (nombre, ciudad) values ('Hartley', 'Banjar Beratan');
insert into clientes (nombre, ciudad) values ('Rycca', 'Aranos');
insert into clientes (nombre, ciudad) values ('Alice', 'Coruña, A');
insert into clientes (nombre, ciudad) values ('Josefa', 'São Paio de Gramaços');
insert into clientes (nombre, ciudad) values ('Auguste', 'Tangkanpulit');
insert into clientes (nombre, ciudad) values ('Hildy', 'Nazareth');
insert into clientes (nombre, ciudad) values ('Hayden', 'Panggunguni');
insert into clientes (nombre, ciudad) values ('Lauree', 'Kindersley');
insert into clientes (nombre, ciudad) values ('Jemmy', 'Kasamwa');
insert into clientes (nombre, ciudad) values ('Dov', 'Cajacay');
insert into clientes (nombre, ciudad) values ('Tommi', 'Marulanda');
insert into clientes (nombre, ciudad) values ('Westley', 'Cambrai');
insert into clientes (nombre, ciudad) values ('Pavla', 'Ciputat');
insert into clientes (nombre, ciudad) values ('Rosaleen', 'Zongjia');
insert into clientes (nombre, ciudad) values ('Mal', 'Tugu');
insert into clientes (nombre, ciudad) values ('Helena', 'Huancabamba');
insert into clientes (nombre, ciudad) values ('Stan', 'Wairiang');
insert into clientes (nombre, ciudad) values ('Ferrel', 'Nangabere');

---tabla productos---
CREATE TABLE productos (
producto_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
precio_unitario NUMERIC (10,2)
);

---datos productos---
insert into productos (nombre, precio_unitario) values ('Samsung I9295 Galaxy S4 Active', 273.66);
insert into productos (nombre, precio_unitario) values ('BLU Tank Xtreme Pro', 205.9);
insert into productos (nombre, precio_unitario) values ('Samsung G400 Soul', 430.76);
insert into productos (nombre, precio_unitario) values ('LG GT950 Arena', 168.28);
insert into productos (nombre, precio_unitario) values ('BLU R2', 456.18);
insert into productos (nombre, precio_unitario) values ('Haier M150', 224.84);
insert into productos (nombre, precio_unitario) values ('Lenovo S580', 300.79);
insert into productos (nombre, precio_unitario) values ('Xiaomi Mi 8 Pro', 171.94);
insert into productos (nombre, precio_unitario) values ('QMobile Noir Z9', 181.23);
insert into productos (nombre, precio_unitario) values ('verykool i725', 199.25);
insert into productos (nombre, precio_unitario) values ('Micromax X265', 173.35);
insert into productos (nombre, precio_unitario) values ('Huawei MediaPad T1 8.0', 437.43);
insert into productos (nombre, precio_unitario) values ('Plum Optimax 7.0', 130.95);
insert into productos (nombre, precio_unitario) values ('Sharp GX40', 207.03);
insert into productos (nombre, precio_unitario) values ('Meizu MX4 Pro', 158.29);
insert into productos (nombre, precio_unitario) values ('Gigabyte GSmart MS800', 440.92);
insert into productos (nombre, precio_unitario) values ('Sony Xperia E3 Dual', 262.92);
insert into productos (nombre, precio_unitario) values ('Samsung Z100', 494.84);
insert into productos (nombre, precio_unitario) values ('Emporia Click Plus', 119.64);
insert into productos (nombre, precio_unitario) values ('LG Aristo 2', 291.24);
insert into productos (nombre, precio_unitario) values ('Samsung P110', 239.49);
insert into productos (nombre, precio_unitario) values ('Nokia 6600', 101.8);
insert into productos (nombre, precio_unitario) values ('Philips X518', 331.33);
insert into productos (nombre, precio_unitario) values ('Lenovo A1000', 442.05);
insert into productos (nombre, precio_unitario) values ('Samsung Galaxy Attain 4G', 334.92);
insert into productos (nombre, precio_unitario) values ('Samsung S3310', 485.59);
insert into productos (nombre, precio_unitario) values ('alcatel OT-C630', 487.05);
insert into productos (nombre, precio_unitario) values ('Lava Z10', 298.03);
insert into productos (nombre, precio_unitario) values ('Motorola Moto 360 46mm (2nd gen)', 119.89);
insert into productos (nombre, precio_unitario) values ('Samsung S5780 Wave 578', 165.15);
insert into productos (nombre, precio_unitario) values ('AT&T Mustang', 227.3);
insert into productos (nombre, precio_unitario) values ('O2 Ice', 159.78);
insert into productos (nombre, precio_unitario) values ('Maxwest MX-210TV', 434.08);
insert into productos (nombre, precio_unitario) values ('i-mate SPJAS', 284.63);
insert into productos (nombre, precio_unitario) values ('Micromax X550 Qube', 116.8);
insert into productos (nombre, precio_unitario) values ('O2 XDA Trion', 268.79);
insert into productos (nombre, precio_unitario) values ('Apple iPad Air (2020)', 317.82);
insert into productos (nombre, precio_unitario) values ('Oppo N3', 368.46);
insert into productos (nombre, precio_unitario) values ('Samsung D810', 187.29);
insert into productos (nombre, precio_unitario) values ('Wiko Sunset2', 401.65);
insert into productos (nombre, precio_unitario) values ('Icemobile Prime 5.0 Plus', 279.95);
insert into productos (nombre, precio_unitario) values ('Infinix Hot 6 Pro', 480.27);
insert into productos (nombre, precio_unitario) values ('Nokia E61i', 164.13);
insert into productos (nombre, precio_unitario) values ('BQ  Aquaris M10', 319.6);
insert into productos (nombre, precio_unitario) values ('Celkon Q450', 224.35);
insert into productos (nombre, precio_unitario) values ('alcatel OT-S121', 441.1);
insert into productos (nombre, precio_unitario) values ('Honor V40 5G', 415.13);
insert into productos (nombre, precio_unitario) values ('Nokia C2-05', 266.33);
insert into productos (nombre, precio_unitario) values ('Maxon MX-3205F', 418.95);
insert into productos (nombre, precio_unitario) values ('Nokia 6120 classic', 333.22);

---tabla ventas---
CREATE TABLE ventas (
venta_id SERIAL PRIMARY KEY,
cliente_id INT,
fecha DATE,
total NUMERIC (10, 2),
FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

---datos ventas---
insert into ventas (cliente_id, fecha, total) values (10, '2025-01-28', 687.06);
insert into ventas (cliente_id, fecha, total) values (9, '2025-01-17', 790.36);
insert into ventas (cliente_id, fecha, total) values (22, '2025-02-04', 879.7);
insert into ventas (cliente_id, fecha, total) values (16, '2025-01-19', 414.06);
insert into ventas (cliente_id, fecha, total) values (9, '2025-01-18', 899.37);
insert into ventas (cliente_id, fecha, total) values (19, '2025-01-13', 580.81);
insert into ventas (cliente_id, fecha, total) values (2, '2025-01-30', 716.19);
insert into ventas (cliente_id, fecha, total) values (23, '2025-01-23', 478.18);
insert into ventas (cliente_id, fecha, total) values (13, '2025-01-19', 406.21);
insert into ventas (cliente_id, fecha, total) values (4, '2025-02-25', 905.02);
insert into ventas (cliente_id, fecha, total) values (22, '2025-02-12', 964.58);
insert into ventas (cliente_id, fecha, total) values (19, '2025-01-04', 899.99);
insert into ventas (cliente_id, fecha, total) values (9, '2025-01-08', 777.44);
insert into ventas (cliente_id, fecha, total) values (10, '2025-01-11', 582.7);
insert into ventas (cliente_id, fecha, total) values (21, '2025-01-07', 824.86);
insert into ventas (cliente_id, fecha, total) values (15, '2025-01-07', 955.12);
insert into ventas (cliente_id, fecha, total) values (16, '2025-01-20', 553.83);
insert into ventas (cliente_id, fecha, total) values (16, '2025-02-08', 730.78);
insert into ventas (cliente_id, fecha, total) values (25, '2025-01-08', 618.1);
insert into ventas (cliente_id, fecha, total) values (19, '2025-02-26', 676.2);
insert into ventas (cliente_id, fecha, total) values (13, '2025-02-18', 636.11);
insert into ventas (cliente_id, fecha, total) values (2, '2025-02-17', 575.78);
insert into ventas (cliente_id, fecha, total) values (11, '2025-02-25', 837.06);
insert into ventas (cliente_id, fecha, total) values (1, '2025-02-14', 460.93);
insert into ventas (cliente_id, fecha, total) values (10, '2025-02-22', 407.4);
insert into ventas (cliente_id, fecha, total) values (16, '2025-01-27', 902.37);
insert into ventas (cliente_id, fecha, total) values (14, '2025-02-07', 574.72);
insert into ventas (cliente_id, fecha, total) values (10, '2025-02-03', 866.25);
insert into ventas (cliente_id, fecha, total) values (22, '2025-02-03', 653.61);
insert into ventas (cliente_id, fecha, total) values (11, '2025-01-31', 675.74);
insert into ventas (cliente_id, fecha, total) values (17, '2025-02-16', 569.29);
insert into ventas (cliente_id, fecha, total) values (6, '2025-02-14', 492.13);
insert into ventas (cliente_id, fecha, total) values (20, '2025-02-12', 765.06);
insert into ventas (cliente_id, fecha, total) values (9, '2025-02-10', 715.55);
insert into ventas (cliente_id, fecha, total) values (2, '2025-01-16', 880.8);
insert into ventas (cliente_id, fecha, total) values (21, '2025-02-03', 816.86);
insert into ventas (cliente_id, fecha, total) values (8, '2025-02-23', 807.43);
insert into ventas (cliente_id, fecha, total) values (23, '2025-02-12', 909.04);
insert into ventas (cliente_id, fecha, total) values (2, '2025-02-01', 547.38);
insert into ventas (cliente_id, fecha, total) values (12, '2025-01-15', 443.83);
insert into ventas (cliente_id, fecha, total) values (20, '2025-01-06', 458.29);
insert into ventas (cliente_id, fecha, total) values (8, '2025-01-04', 435.14);
insert into ventas (cliente_id, fecha, total) values (9, '2025-01-17', 662.28);
insert into ventas (cliente_id, fecha, total) values (19, '2025-02-13', 675.83);
insert into ventas (cliente_id, fecha, total) values (7, '2025-01-06', 454.55);
insert into ventas (cliente_id, fecha, total) values (9, '2025-01-16', 733.72);
insert into ventas (cliente_id, fecha, total) values (24, '2025-01-05', 794.53);
insert into ventas (cliente_id, fecha, total) values (11, '2025-02-01', 736.58);
insert into ventas (cliente_id, fecha, total) values (24, '2025-02-26', 773.91);
insert into ventas (cliente_id, fecha, total) values (19, '2025-01-21', 574.64);

---tabla clima---
CREATE TABLE clima (
registro_id SERIAL PRIMARY KEY,
ciudad VARCHAR (100),
fecha DATE,
temperatura INT
);

---datos climas---
insert into clima (registro_id, ciudad, fecha, temperatura) values (1, 'medellin', '2025-01-01', 11);
insert into clima (registro_id, ciudad, fecha, temperatura) values (2, 'medellin', '2025-01-11', 12);
insert into clima (registro_id, ciudad, fecha, temperatura) values (3, 'cali', '2025-02-21', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (4, 'bogota', '2025-01-28', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (5, 'medellin', '2025-01-12', 11);
insert into clima (registro_id, ciudad, fecha, temperatura) values (6, 'barranquilla', '2025-01-16', 17);
insert into clima (registro_id, ciudad, fecha, temperatura) values (7, 'bogota', '2025-02-04', 20);
insert into clima (registro_id, ciudad, fecha, temperatura) values (8, 'cali', '2025-02-21', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (9, 'cali', '2025-01-12', 19);
insert into clima (registro_id, ciudad, fecha, temperatura) values (10, 'medellin', '2025-01-14', 20);
insert into clima (registro_id, ciudad, fecha, temperatura) values (11, 'barranquilla', '2025-02-25', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (12, 'barranquilla', '2025-02-26', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (13, 'cali', '2025-02-16', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (14, 'cali', '2025-01-21', 18);
insert into clima (registro_id, ciudad, fecha, temperatura) values (15, 'bogota', '2025-01-19', 12);
insert into clima (registro_id, ciudad, fecha, temperatura) values (16, 'bogota', '2025-01-13', 18);
insert into clima (registro_id, ciudad, fecha, temperatura) values (17, 'manizales', '2025-02-24', 18);
insert into clima (registro_id, ciudad, fecha, temperatura) values (18, 'manizales', '2025-01-25', 12);
insert into clima (registro_id, ciudad, fecha, temperatura) values (19, 'manizales', '2025-02-07', 17);
insert into clima (registro_id, ciudad, fecha, temperatura) values (20, 'cali', '2025-01-14', 19);
insert into clima (registro_id, ciudad, fecha, temperatura) values (21, 'medellin', '2025-01-20', 14);
insert into clima (registro_id, ciudad, fecha, temperatura) values (22, 'barranquilla', '2025-02-14', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (23, 'manizales', '2025-02-07', 10);
insert into clima (registro_id, ciudad, fecha, temperatura) values (24, 'cali', '2025-01-14', 20);
insert into clima (registro_id, ciudad, fecha, temperatura) values (25, 'medellin', '2025-02-27', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (26, 'manizales', '2025-02-27', 12);
insert into clima (registro_id, ciudad, fecha, temperatura) values (27, 'bogota', '2025-01-07', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (28, 'bogota', '2025-01-28', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (29, 'medellin', '2025-01-27', 18);
insert into clima (registro_id, ciudad, fecha, temperatura) values (30, 'manizales', '2025-01-09', 12);
insert into clima (registro_id, ciudad, fecha, temperatura) values (31, 'cali', '2025-01-15', 17);
insert into clima (registro_id, ciudad, fecha, temperatura) values (32, 'cali', '2025-02-20', 11);
insert into clima (registro_id, ciudad, fecha, temperatura) values (33, 'medellin', '2025-02-03', 10);
insert into clima (registro_id, ciudad, fecha, temperatura) values (34, 'barranquilla', '2025-01-30', 16);
insert into clima (registro_id, ciudad, fecha, temperatura) values (35, 'barranquilla', '2025-01-29', 10);
insert into clima (registro_id, ciudad, fecha, temperatura) values (36, 'cali', '2025-01-17', 17);
insert into clima (registro_id, ciudad, fecha, temperatura) values (37, 'bogota', '2025-02-18', 14);
insert into clima (registro_id, ciudad, fecha, temperatura) values (38, 'manizales', '2025-01-08', 18);
insert into clima (registro_id, ciudad, fecha, temperatura) values (39, 'cartagena', '2025-01-24', 20);
insert into clima (registro_id, ciudad, fecha, temperatura) values (40, 'cartagena', '2025-01-07', 14);
insert into clima (registro_id, ciudad, fecha, temperatura) values (41, 'cartagena', '2025-02-12', 10);
insert into clima (registro_id, ciudad, fecha, temperatura) values (42, 'medellin', '2025-02-25', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (43, 'bogota', '2025-01-13', 11);
insert into clima (registro_id, ciudad, fecha, temperatura) values (44, 'cartagena', '2025-01-19', 14);
insert into clima (registro_id, ciudad, fecha, temperatura) values (45, 'bogota', '2025-01-30', 10);
insert into clima (registro_id, ciudad, fecha, temperatura) values (46, 'cartagena', '2025-01-20', 15);
insert into clima (registro_id, ciudad, fecha, temperatura) values (47, 'barranquilla', '2025-01-02', 19);
insert into clima (registro_id, ciudad, fecha, temperatura) values (48, 'cali', '2025-02-22', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (49, 'manizales', '2025-02-25', 13);
insert into clima (registro_id, ciudad, fecha, temperatura) values (50, 'medellin', '2025-02-24', 16);

---tabla empleados---
CREATE TABLE empleados (
empleado_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
fecha_registro DATE
);

---datos empleados---
insert into empleados (nombre, fecha_registro, empresa_id) values ('Darell', '2025-02-13', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Lemmy', '2025-01-02', 13);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Darbee', '2025-01-18', 14);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Wait', '2025-01-19', 17);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Nicolina', '2025-02-20', 17);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Terese', '2025-02-21', 13);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Renard', '2025-02-22', 2);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Hobie', '2025-01-18', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Carmon', '2025-02-21', 8);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Lindi', '2025-02-20', 6);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Dorelle', '2025-01-21', 6);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Barris', '2025-02-12', 7);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Abrahan', '2025-01-23', 13);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Zared', '2025-01-26', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Faye', '2025-01-31', 14);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Micki', '2025-02-16', 10);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Kira', '2025-01-05', 8);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Ronny', '2025-02-24', 6);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Werner', '2025-01-25', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Jaclin', '2025-02-14', 19);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Ximenez', '2025-01-06', 1);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Jaye', '2025-02-27', 8);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Elsinore', '2025-01-18', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Domenico', '2025-02-02', 5);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Yard', '2025-02-01', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Maison', '2025-01-01', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Gizela', '2025-02-08', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Shepperd', '2025-01-17', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Rois', '2025-01-09', 2);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Catherin', '2025-01-01', 6);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Krystal', '2025-02-20', 17);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Lyell', '2025-02-07', 10);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Janel', '2025-01-03', 10);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Bronny', '2025-02-17', 14);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Marwin', '2025-02-18', 1);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Allene', '2025-02-24', 11);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Leon', '2025-02-03', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Carlina', '2025-01-16', 8);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Zola', '2025-01-07', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Marv', '2025-01-19', 2);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Ephraim', '2025-01-17', 18);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Molli', '2025-02-18', 12);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Alfi', '2025-01-30', 20);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Row', '2025-02-26', 13);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Darnall', '2025-01-16', 1);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Claudell', '2025-01-27', 9);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Mallorie', '2025-01-09', 6);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Gottfried', '2025-02-07', 19);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Hamilton', '2025-01-07', 16);
insert into empleados (nombre, fecha_registro, empresa_id) values ('Marcello', '2025-01-25', 4);

---tabla horas_trabajadas---
CREATE TABLE horas_trabajadas (
turno_id SERIAL PRIMARY KEY,
empleado_id INT,
fecha DATE,
horas INT,
FOREIGN KEY (empleado_id) REFERENCES empleados (empleado_id);
);

---datos horas_trabajadas---
insert into horas_trabajadas (empleado_id, fecha, horas) values (14, '2025-01-21', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-01-15', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (6, '2025-02-26', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (4, '2025-02-08', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (3, '2025-02-24', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-02-08', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (17, '2025-01-17', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (5, '2025-01-18', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (11, '2025-02-23', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-02-09', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (1, '2025-02-01', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-13', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-07', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-01-21', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-02-25', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (18, '2025-02-18', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-14', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (18, '2025-02-19', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (14, '2025-01-14', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (13, '2025-02-14', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (19, '2025-01-03', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-26', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (9, '2025-01-29', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (14, '2025-01-12', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (9, '2025-02-23', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (19, '2025-02-08', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-02-10', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (6, '2025-02-15', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-28', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (5, '2025-01-28', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (19, '2025-02-23', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (11, '2025-01-01', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-01-09', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (5, '2025-02-11', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (9, '2025-01-07', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (14, '2025-02-06', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-24', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-02-06', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (20, '2025-01-13', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-12', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-01-12', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (20, '2025-02-18', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-19', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-02-22', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-02', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (4, '2025-02-14', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (20, '2025-01-12', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-02', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (19, '2025-02-17', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-02-14', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (14, '2025-01-08', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-02-02', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (10, '2025-02-06', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-01-01', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-02-27', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-01-17', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (19, '2025-02-08', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-01-11', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (2, '2025-02-06', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (13, '2025-02-02', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (20, '2025-02-24', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (1, '2025-02-10', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (3, '2025-01-03', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-01-26', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (11, '2025-01-07', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (17, '2025-01-23', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (9, '2025-01-20', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (10, '2025-01-27', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-02-24', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-19', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (4, '2025-01-20', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (13, '2025-01-29', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-20', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (1, '2025-01-06', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (17, '2025-01-27', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (6, '2025-01-06', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (4, '2025-01-12', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-02-20', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-02-20', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (1, '2025-01-30', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (1, '2025-01-06', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (6, '2025-02-08', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-07', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-06', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (17, '2025-01-27', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (15, '2025-02-02', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (11, '2025-01-22', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (2, '2025-02-21', 10);
insert into horas_trabajadas (empleado_id, fecha, horas) values (5, '2025-02-16', 12);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-01-01', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-14', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (8, '2025-02-11', 8);
insert into horas_trabajadas (empleado_id, fecha, horas) values (9, '2025-01-04', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-01-07', 14);
insert into horas_trabajadas (empleado_id, fecha, horas) values (7, '2025-01-15', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (20, '2025-02-11', 9);
insert into horas_trabajadas (empleado_id, fecha, horas) values (3, '2025-01-03', 13);
insert into horas_trabajadas (empleado_id, fecha, horas) values (16, '2025-02-01', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (4, '2025-02-05', 11);
insert into horas_trabajadas (empleado_id, fecha, horas) values (12, '2025-02-17', 9);

---tabla jugador---
CREATE TABLE jugador (
jugador_id SERIAL PRIMARY KEY,
nombre VARCHAR(100),
edad INT
);

---datos jugador---
insert into jugador (nombre, edad) values ('Caudray', 21);
insert into jugador (nombre, edad) values ('Sedgefield', 35);
insert into jugador (nombre, edad) values ('Fried', 37);
insert into jugador (nombre, edad) values ('Lambdin', 18);
insert into jugador (nombre, edad) values ('McCluskey', 34);
insert into jugador (nombre, edad) values ('Heine', 32);
insert into jugador (nombre, edad) values ('Spring', 32);
insert into jugador (nombre, edad) values ('Milburne', 27);
insert into jugador (nombre, edad) values ('Inker', 19);
insert into jugador (nombre, edad) values ('Fyrth', 25);


---tabla juegos---
CREATE TABLE juegos (
juego_id INT,
jugador_id INT,
fecha DATE,
puntos INT,
FOREIGN KEY (jugador_id) REFERENCES jugador(jugador_id)
);

---datos juegos---
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 1, '2025-01-14', 7);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 2, '2025-01-30', 6);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 3, '2025-01-09', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 4, '2025-02-12', 7);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 5, '2025-02-06', 6);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 6, '2025-02-13', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 7, '2025-01-06', 8);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 8, '2025-01-27', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 9, '2025-02-20', 10);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (1, 10, '2025-02-01', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 1, '2025-02-19', 3);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 2, '2025-02-16', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 3, '2025-02-12', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 4, '2025-01-08', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 5, '2025-01-15', 4);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 6, '2025-02-22', 8);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 7, '2025-02-11', 4);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 8, '2025-01-18', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 9, '2025-02-06', 3);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (2, 10, '2025-02-26', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 1, '2025-01-20', 6);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 2, '2025-01-30', 8);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 3, '2025-02-17', 3);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 4, '2025-01-02', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 5, '2025-02-22', 4);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 6, '2025-01-19', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 7, '2025-02-01', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 8, '2025-02-04', 10);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 9, '2025-02-04', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (3, 10, '2025-02-06', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 1, '2025-02-21', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 2, '2025-02-09', 3);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 3, '2025-02-11', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 4, '2025-01-16', 6);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 5, '2025-01-20', 8);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 6, '2025-02-26', 10);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 7, '2025-01-27', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 8, '2025-02-15', 4);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 9, '2025-02-23', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (4, 10, '2025-01-06', 4);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 1, '2025-01-24', 5);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 2, '2025-01-09', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 3, '2025-01-30', 1);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 4, '2025-01-26', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 5, '2025-02-15', 3);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 6, '2025-01-07', 10);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 7, '2025-02-04', 2);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 8, '2025-02-08', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 9, '2025-01-28', 9);
insert into juegos (juego_id, jugador_id, fecha, puntos) values (5, 10, '2025-01-16', 7);

---tabla productos_vendidos---
CREATE TABLE productos_vendidos (
producto_vendido_id SERIAL PRIMARY KEY,
producto_id INT,
venta_id INT,
fecha DATE,
cantidad INT,
FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
FOREIGN KEY (venta_id) REFERENCES ventas(venta_id)
);

---datos productos_vendidos---
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (5, 35, '2025-01-17', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (5, 35, '2025-02-21', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (18, 18, '2025-02-22', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (18, 35, '2025-02-27', 5);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (22, 29, '2025-02-09', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (26, 48, '2025-02-20', 7);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (10, 27, '2025-01-29', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (22, 41, '2025-01-10', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (6, 1, '2025-01-31', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (22, 6, '2025-01-22', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (26, 35, '2025-01-24', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (20, 38, '2025-01-16', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (24, 32, '2025-02-19', 4);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (6, 23, '2025-02-13', 4);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (13, 40, '2025-01-05', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (19, 39, '2025-01-20', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (25, 21, '2025-02-09', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (19, 22, '2025-02-15', 5);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (2, 25, '2025-01-05', 3);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (9, 3, '2025-02-20', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (28, 29, '2025-01-12', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (12, 3, '2025-02-23', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (30, 28, '2025-02-16', 7);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (21, 39, '2025-02-11', 1);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (22, 11, '2025-02-03', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (3, 4, '2025-01-31', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (12, 45, '2025-02-06', 7);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (23, 45, '2025-02-16', 3);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (21, 29, '2025-02-13', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (18, 47, '2025-01-03', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (24, 2, '2025-01-16', 4);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (5, 38, '2025-02-07', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (5, 10, '2025-02-15', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (14, 31, '2025-01-29', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (25, 1, '2025-01-26', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (3, 37, '2025-01-22', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (15, 2, '2025-02-18', 2);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (7, 50, '2025-01-28', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (2, 15, '2025-02-13', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (24, 24, '2025-01-22', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (15, 2, '2025-01-08', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (30, 42, '2025-02-18', 3);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (10, 28, '2025-02-22', 10);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (10, 41, '2025-02-05', 5);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (29, 12, '2025-01-28', 1);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (23, 13, '2025-01-30', 8);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (25, 22, '2025-01-13', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (11, 20, '2025-01-30', 9);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (4, 32, '2025-02-27', 6);
insert into productos_vendidos (producto_id, venta_id, fecha, cantidad) values (22, 4, '2025-01-02', 10);

---tabla usuario---
CREATE TABLE usuario (
usuario_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
fecha_registro DATE
);

---datos usuario---
insert into usuario (nombre, fecha_registro) values ('Jill', '2025-01-01');
insert into usuario (nombre, fecha_registro) values ('Lucien', '2025-01-18');
insert into usuario (nombre, fecha_registro) values ('Jaine', '2025-02-17');
insert into usuario (nombre, fecha_registro) values ('Gayle', '2025-02-02');
insert into usuario (nombre, fecha_registro) values ('Krysta', '2025-02-02');
insert into usuario (nombre, fecha_registro) values ('Una', '2025-01-04');
insert into usuario (nombre, fecha_registro) values ('Kristin', '2025-02-07');
insert into usuario (nombre, fecha_registro) values ('Cecil', '2025-01-13');
insert into usuario (nombre, fecha_registro) values ('Lorettalorna', '2025-02-25');
insert into usuario (nombre, fecha_registro) values ('Zandra', '2025-01-22');
insert into usuario (nombre, fecha_registro) values ('Coraline', '2025-02-21');
insert into usuario (nombre, fecha_registro) values ('Jim', '2025-01-13');
insert into usuario (nombre, fecha_registro) values ('Abbe', '2025-01-29');
insert into usuario (nombre, fecha_registro) values ('Conant', '2025-02-20');
insert into usuario (nombre, fecha_registro) values ('Bartlet', '2025-01-03');
insert into usuario (nombre, fecha_registro) values ('Cherice', '2025-01-22');
insert into usuario (nombre, fecha_registro) values ('Amos', '2025-02-15');
insert into usuario (nombre, fecha_registro) values ('Danette', '2025-02-01');
insert into usuario (nombre, fecha_registro) values ('Robinet', '2025-01-03');
insert into usuario (nombre, fecha_registro) values ('Aloisia', '2025-01-28');

---tabla transacciones_usuarios---
CREATE TABLE transacciones_usuarios (
transacciones_id SERIAL PRIMARY KEY,
usuario_id INT,
fecha DATE,
monto NUMERIC (10,2),
FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

---datos transacciones_usuarios---
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-13', 584.28);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-01-20', 710.81);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-03', 188.84);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-05', 822.7);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-02-18', 967.24);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-09', 787.46);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (4, '2025-01-25', 825.52);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-06', 661.21);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-02-21', 992.51);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-05', 107.71);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-01-23', 637.81);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-17', 297.64);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-01-31', 200.13);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-30', 498.49);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-17', 518.4);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-22', 260.06);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-27', 417.11);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-10', 556.25);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-26', 869.05);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-02', 432.64);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-01-30', 316.77);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-19', 591.85);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-15', 294.85);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-10', 309.76);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-01-04', 309.36);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-19', 443.03);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-23', 204.31);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-24', 208.08);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-02-12', 133.21);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-25', 631.52);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-22', 565.41);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-04', 908.67);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-10', 313.28);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (4, '2025-02-19', 233.04);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-02-09', 373.81);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (4, '2025-02-08', 327.16);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-14', 872.17);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-01-31', 887.61);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-02-15', 143.56);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-12', 697.29);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (4, '2025-01-30', 606.28);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-02-17', 430.91);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-19', 715.41);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (5, '2025-02-26', 495.38);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-02-04', 779.58);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (1, '2025-01-04', 357.01);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-01-12', 211.22);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-01-25', 827.56);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (2, '2025-01-24', 321.94);
insert into transacciones_usuarios (usuario_id, fecha, monto) values (3, '2025-02-24', 950.34);

---tabla cajero---
CREATE TABLE cajero(
cajero_id SERIAL PRIMARY KEY,
nombre_cajero VARCHAR(100),
ubicacion VARCHAR(100)
);

---datos cajero---
insert into cajero (nombre_cajero, ubicacion) values ('USD', '2');
insert into cajero (nombre_cajero, ubicacion) values ('GYD', '03');
insert into cajero (nombre_cajero, ubicacion) values ('EUR', '3282');
insert into cajero (nombre_cajero, ubicacion) values ('CNY', '299');
insert into cajero (nombre_cajero, ubicacion) values ('CNY', '19588');
insert into cajero (nombre_cajero, ubicacion) values ('SYP', '45531');
insert into cajero (nombre_cajero, ubicacion) values ('BRL', '9977');
insert into cajero (nombre_cajero, ubicacion) values ('IDR', '90707');
insert into cajero (nombre_cajero, ubicacion) values ('CNY', '6702');
insert into cajero (nombre_cajero, ubicacion) values ('PLN', '076');

---tabla cajero_retiros---
CREATE TABLE cajero_retiros (
retiro_id SERIAL PRIMARY KEY,
cajero_id INT,
fecha DATE,
monto NUMERIC (10, 2),
FOREIGN KEY (cajero_id) REFERENCES cajero (cajero_id)
);

---datos cajero_retiros---
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-01-02', 487.82);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-01-08', 590.37);
insert into cajero_retiros (cajero_id, fecha, monto) values (6, '2025-02-26', 827.6);
insert into cajero_retiros (cajero_id, fecha, monto) values (5, '2025-02-18', 798.7);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-02-23', 711.88);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-01-19', 731.67);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-01-14', 706.52);
insert into cajero_retiros (cajero_id, fecha, monto) values (8, '2025-02-26', 400.65);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-02-13', 623.05);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-02-07', 769.73);
insert into cajero_retiros (cajero_id, fecha, monto) values (1, '2025-02-22', 434.84);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-01-20', 658.44);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-01-24', 457.69);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-01-27', 746.79);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-02-05', 253.08);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-01-26', 775.37);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-02-27', 619.79);
insert into cajero_retiros (cajero_id, fecha, monto) values (2, '2025-02-21', 755.75);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-02-14', 350.63);
insert into cajero_retiros (cajero_id, fecha, monto) values (6, '2025-01-07', 490.64);
insert into cajero_retiros (cajero_id, fecha, monto) values (9, '2025-02-16', 253.97);
insert into cajero_retiros (cajero_id, fecha, monto) values (2, '2025-02-20', 233.88);
insert into cajero_retiros (cajero_id, fecha, monto) values (1, '2025-02-12', 395.34);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-01-16', 683.04);
insert into cajero_retiros (cajero_id, fecha, monto) values (5, '2025-01-03', 602.01);
insert into cajero_retiros (cajero_id, fecha, monto) values (8, '2025-02-26', 114.9);
insert into cajero_retiros (cajero_id, fecha, monto) values (8, '2025-01-19', 152.11);
insert into cajero_retiros (cajero_id, fecha, monto) values (9, '2025-02-12', 347.86);
insert into cajero_retiros (cajero_id, fecha, monto) values (6, '2025-01-30', 961.61);
insert into cajero_retiros (cajero_id, fecha, monto) values (9, '2025-01-17', 115.92);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-01-28', 765.01);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-02-12', 130.96);
insert into cajero_retiros (cajero_id, fecha, monto) values (8, '2025-01-13', 358.46);
insert into cajero_retiros (cajero_id, fecha, monto) values (10, '2025-01-06', 718.46);
insert into cajero_retiros (cajero_id, fecha, monto) values (6, '2025-02-06', 340.43);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-01-15', 149.45);
insert into cajero_retiros (cajero_id, fecha, monto) values (9, '2025-01-21', 462.29);
insert into cajero_retiros (cajero_id, fecha, monto) values (2, '2025-02-25', 100.18);
insert into cajero_retiros (cajero_id, fecha, monto) values (10, '2025-01-13', 215.8);
insert into cajero_retiros (cajero_id, fecha, monto) values (8, '2025-01-02', 244.69);
insert into cajero_retiros (cajero_id, fecha, monto) values (3, '2025-02-06', 113.03);
insert into cajero_retiros (cajero_id, fecha, monto) values (2, '2025-02-04', 557.33);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-02-03', 649.16);
insert into cajero_retiros (cajero_id, fecha, monto) values (9, '2025-02-26', 487.08);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-02-10', 796.01);
insert into cajero_retiros (cajero_id, fecha, monto) values (10, '2025-02-14', 667.22);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-02-16', 680.35);
insert into cajero_retiros (cajero_id, fecha, monto) values (2, '2025-02-20', 231.1);
insert into cajero_retiros (cajero_id, fecha, monto) values (4, '2025-01-30', 578.32);
insert into cajero_retiros (cajero_id, fecha, monto) values (7, '2025-02-03', 218.25);

---tabla negocios---
CREATE TABLE negocios(
negocio_id SERIAL PRIMARY KEY,
nombre VARCHAR(100),
fecha_creacion DATE
);

---datos negocios---
insert into negocios (nombre, fecha_creacion) values ('La econmica', '2025-02-27');
insert into negocios (nombre, fecha_creacion) values ('La olimpica', '2025-02-23');
insert into negocios (nombre, fecha_creacion) values ('Ara', '2025-01-31');
insert into negocios (nombre, fecha_creacion) values ('Nike', '2025-02-25');
insert into negocios (nombre, fecha_creacion) values ('Exito', '2025-01-31');
insert into negocios (nombre, fecha_creacion) values ('El antioqueño', '2025-01-08');
insert into negocios (nombre, fecha_creacion) values ('Adidas', '2025-02-10');
insert into negocios (nombre, fecha_creacion) values ('Macdonals', '2025-01-30');
insert into negocios (nombre, fecha_creacion) values ('Puma', '2025-02-09');
insert into negocios (nombre, fecha_creacion) values ('Paprimos', '2025-01-27');


---tabla ingresos_negocios---
CREATE TABLE ingresos_negocios (
ingreso_id SERIAL PRIMARY KEY,
negocio_id INT,
fecha DATE,
ingreso NUMERIC(10, 2),
FOREIGN KEY (negocio_id) REFERENCES negocios (negocio_id)
);

---datos ingresos_negocios---
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-02-17', 920.07);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-02-18', 875.61);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (7, '2025-01-04', 902.98);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (10, '2025-02-01', 274.93);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-02-08', 686.17);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-02-16', 414.44);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (3, '2025-01-17', 391.83);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-02-01', 554.3);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (3, '2025-01-24', 401.01);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-01-05', 248.99);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (1, '2025-01-29', 194.65);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-02-17', 544.36);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (10, '2025-02-13', 482.64);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (1, '2025-01-07', 238.26);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-01-07', 668.86);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (3, '2025-01-23', 190.58);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (7, '2025-01-26', 340.4);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (7, '2025-01-19', 569.07);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (6, '2025-02-20', 185.78);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (6, '2025-01-03', 743.73);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-01-31', 367.77);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-01-22', 327.7);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (7, '2025-02-05', 520.4);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (8, '2025-01-08', 120.84);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (3, '2025-02-04', 768.41);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-01-18', 750.51);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-02-06', 225.59);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (8, '2025-02-23', 390.35);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (3, '2025-01-31', 124.09);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-02-25', 198.12);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (10, '2025-01-29', 293.27);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (8, '2025-02-05', 130.2);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-01-16', 717.16);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-01-22', 595.51);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (10, '2025-01-13', 108.94);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (1, '2025-01-28', 243.3);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-01-27', 188.93);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (6, '2025-01-02', 114.25);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-02-14', 153.59);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-01-27', 519.94);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-01-02', 817.78);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (5, '2025-02-08', 283.57);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-01-16', 715.38);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-02-03', 770.99);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (9, '2025-01-21', 469.71);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-01-07', 873.59);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (7, '2025-01-02', 332.69);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (2, '2025-02-06', 521.07);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (4, '2025-01-08', 214.68);
insert into ingresos_negocios (negocio_id, fecha, ingreso) values (1, '2025-01-17', 667.67);

--- tabla costos_operacionales---
CREATE TABLE costos_operacionales (
id_costo SERIAL PRIMARY KEY,
id_empresa INT,
fecha DATE,
costo DECIMAL(10,2)
);

--- datos costos_operacionales---
insert into costos_operacionales (id_empresa, fecha, costo) values (4.91, '2025-02-25', 947.41);
insert into costos_operacionales (id_empresa, fecha, costo) values (3.77, '2025-02-15', 539.85);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.14, '2025-02-06', 452.82);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.8, '2025-01-25', 248.69);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.47, '2025-02-08', 622.3);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.4, '2025-02-03', 159.81);
insert into costos_operacionales (id_empresa, fecha, costo) values (2.49, '2025-02-06', 967.67);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.18, '2025-01-16', 472.06);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.39, '2025-02-13', 565.08);
insert into costos_operacionales (id_empresa, fecha, costo) values (3.24, '2025-02-06', 200.48);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.32, '2025-02-17', 900.32);
insert into costos_operacionales (id_empresa, fecha, costo) values (3.9, '2025-01-04', 627.45);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.27, '2025-01-10', 361.1);
insert into costos_operacionales (id_empresa, fecha, costo) values (6.22, '2025-02-25', 569.7);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.65, '2025-02-17', 812.51);
insert into costos_operacionales (id_empresa, fecha, costo) values (6.08, '2025-01-14', 806.82);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.49, '2025-02-01', 305.14);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.19, '2025-01-02', 639.6);
insert into costos_operacionales (id_empresa, fecha, costo) values (6.8, '2025-01-31', 491.84);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.68, '2025-01-13', 569.93);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.36, '2025-01-01', 509.26);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.53, '2025-02-09', 839.94);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.68, '2025-02-07', 671.09);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.27, '2025-01-01', 688.76);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.67, '2025-01-28', 436.91);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.35, '2025-01-05', 129.47);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.13, '2025-01-25', 172.52);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.58, '2025-02-18', 379.93);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.12, '2025-02-07', 738.31);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.2, '2025-02-18', 731.37);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.82, '2025-02-09', 606.75);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.2, '2025-02-03', 242.3);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.21, '2025-01-07', 955.12);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.11, '2025-02-06', 177.95);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.86, '2025-01-30', 607.06);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.87, '2025-01-28', 570.59);
insert into costos_operacionales (id_empresa, fecha, costo) values (3.47, '2025-02-25', 522.84);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.05, '2025-01-01', 285.57);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.06, '2025-01-01', 250.1);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.42, '2025-02-27', 759.3);
insert into costos_operacionales (id_empresa, fecha, costo) values (2.76, '2025-01-04', 615.62);
insert into costos_operacionales (id_empresa, fecha, costo) values (9.48, '2025-02-16', 311.95);
insert into costos_operacionales (id_empresa, fecha, costo) values (2.18, '2025-02-08', 774.23);
insert into costos_operacionales (id_empresa, fecha, costo) values (3.85, '2025-02-01', 447.32);
insert into costos_operacionales (id_empresa, fecha, costo) values (1.27, '2025-02-03', 163.48);
insert into costos_operacionales (id_empresa, fecha, costo) values (6.01, '2025-02-16', 494.61);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.54, '2025-02-23', 644.96);
insert into costos_operacionales (id_empresa, fecha, costo) values (7.8, '2025-02-25', 555.78);
insert into costos_operacionales (id_empresa, fecha, costo) values (8.74, '2025-02-18', 412.11);
insert into costos_operacionales (id_empresa, fecha, costo) values (4.16, '2025-02-23', 380.93);

---EJERCICIO 1---
SELECT cl.nombre AS clientes,
       v.fecha,
	   v.total,
	   SUM(v.total)OVER(PARTITION BY cl.nombre ORDER BY v.fecha RANGE BETWEEN INTERVAL '7 days' PRECEDING AND CURRENT ROW) AS total_venta_7_dias
FROM ventas v
INNER JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

---EJERCICIO 2---
SELECT cl.nombre AS clientes,
       v.fecha,
	   v.total,
	   AVG(v.total)OVER(PARTITION BY cl.nombre ORDER BY v.fecha RANGE BETWEEN INTERVAL '10 days' PRECEDING AND CURRENT ROW) AS promedio
FROM ventas v
INNER JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

---EJERCICIO 3---
SELECT ciudad,
       fecha,
	   temperatura,
	   SUM(temperatura)OVER(PARTITION BY ciudad ORDER BY fecha RANGE BETWEEN INTERVAL '5 days' PRECEDING AND CURRENT ROW) AS total_temperatura
FROM clima;

---EJERCICIO 4---
SELECT cl.nombre AS clientes,
       v.fecha,
	   v.total,
	   COUNT(v.total)OVER(PARTITION BY cl.nombre ORDER BY v.fecha RANGE BETWEEN INTERVAL '15 days' PRECEDING AND CURRENT ROW) AS numero_cuenta
FROM ventas v
INNER JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

---EJERCICIO 5---
SELECT em.nombre AS empleados, 
       h.fecha,
	   h.horas,
	   SUM(h.horas)OVER(PARTITION BY em.nombre ORDER BY h.fecha RANGE BETWEEN INTERVAL '30 days' PRECEDING AND CURRENT ROW) AS total_horas
FROM horas_trabajadas h
INNER JOIN empleados em
ON h.empleado_id = em.empleado_id;

---EJERCICIO 6---
SELECT jr.nombre AS jugador,
       ju.fecha,
	   ju.puntos,
	   SUM(ju.puntos)OVER(PARTITION BY jr.nombre ORDER BY ju.fecha RANGE BETWEEN INTERVAL '3 days' PRECEDING AND CURRENT ROW) AS total_puntos
FROM juegos ju
INNER JOIN jugador jr
ON ju.jugador_id = jr.jugador_id;

---EJERCICIO 7---
SELECT pr.nombre AS productos,
       prv.fecha,
	   prv.cantidad,
	   SUM(prv.cantidad)OVER(PARTITION BY pr.nombre ORDER BY prv.fecha RANGE BETWEEN INTERVAL '14 days' PRECEDING AND CURRENT ROW) AS total_cantidad
FROM productos_vendidos prv
INNER JOIN productos pr
ON prv.producto_id = pr.producto_id;

---EJERCICIO 8---
SELECT u.nombre AS usuario,
       tu.fecha,
	   tu.monto,
	   COUNT(tu.monto)OVER(PARTITION BY u.nombre ORDER BY tu.fecha RANGE BETWEEN INTERVAL '20 days ' PRECEDING AND CURRENT ROW) AS total_transacciones
FROM transacciones_usuarios tu
INNER JOIN usuario u
ON tu.usuario_id = u.usuario_id;

---EJERCICIO 9---
SELECT c.nombre_cajero,
       cr.fecha,
	   cr.monto,
	   MAX(cr.monto)OVER(PARTITION BY c.nombre_cajero ORDER BY cr.fecha RANGE BETWEEN INTERVAL '10 days' PRECEDING AND CURRENT ROW) AS monto_maximo
FROM cajero_retiros cr
INNER JOIN cajero c
ON cr.cajero_id = c.cajero_id;

---EJERCICIO 10---
SELECT n.nombre AS negocios,
       ni.fecha,
	   ni.ingreso,
	   SUM(ni.ingreso)OVER(PARTITION BY n.nombre ORDER BY ni.fecha RANGE BETWEEN INTERVAL '12 months' PRECEDING AND CURRENT ROW) AS total_ingresos
FROM negocios n
INNER JOIN ingresos_negocios ni
ON ni.negocio_id = n.negocio_id;

---EJERCICIO 11---
SELECT id_empresa,
       fecha,
	   costo,
	   SUM(costo)OVER(PARTITION BY id_empresa ORDER BY fecha RANGE BETWEEN INTERVAL '6 months' PRECEDING AND CURRENT ROW) AS total_costo
FROM costos_operacionales;

---EJERCICIO 12---
SELECT cl.nombre AS clientes,
       v.fecha,
	   v.total,
	   AVG(v.total)OVER(PARTITION BY cl.nombre ORDER BY v.fecha RANGE BETWEEN INTERVAL '30 days' PRECEDING AND CURRENT ROW) AS promedio_total
FROM clientes cl
INNER JOIN ventas v
ON cl.cliente_id = v.cliente_id;

---EJERCICIO 13---
SELECT pr.nombre AS productos,
       prv.fecha,
	   prv.cantidad,
	   SUM(cantidad)OVER(PARTITION BY pr.nombre ORDER BY prv.fecha RANGE BETWEEN INTERVAL '5 days' PRECEDING AND CURRENT ROW) AS total_cantidad
FROM productos_vendidos prv
INNER JOIN productos pr
ON prv.producto_id = pr.producto_id;

---EJERCICIO 14---
SELECT ciudad,
       fecha,
	   temperatura,
	   AVG(temperatura)OVER(PARTITION BY ciudad ORDER BY fecha RANGE BETWEEN INTERVAL '7 days' PRECEDING AND CURRENT ROW) AS promedio_temperatura
FROM clima;

---EJERCICIO 15---
SELECT u.nombre AS usuario,
       tu.fecha,
	   tu.monto,
	   COUNT(tu.monto)OVER(PARTITION BY u.nombre ORDER BY fecha RANGE BETWEEN INTERVAL '3 months' PRECEDING AND CURRENT ROW) total_transacciones
FROM transacciones_usuarios tu
INNER JOIN usuario u
ON tu.usuario_id = u.usuario_id;

---EJERCICIO 16---
SELECT em.nombre AS empleados,
       h.fecha,
	   h.horas,
	   SUM(h.horas)OVER(PARTITION BY em.nombre ORDER BY h.fecha RANGE BETWEEN INTERVAL '1 months' PRECEDING AND CURRENT ROW) total_horas
FROM horas_trabajadas h
INNER JOIN empleados em
ON h.empleado_id = em.empleado_id;

---EJERCICIO 17---
SELECT c.nombre_cajero,
       cr.fecha,
	   cr.monto,
	   SUM(cr.monto)OVER(PARTITION BY c.nombre_cajero ORDER BY cr.fecha RANGE BETWEEN INTERVAL '15 days' PRECEDING AND CURRENT ROW) total_monto
FROM cajero c
INNER JOIN cajero_retiros cr
ON c.cajero_id = cr.cajero_id;

---EJERCICIO 18---
SELECT id_empresa,
       fecha,
	   costo,
	   MAX(costo)OVER(PARTITION BY id_empresa ORDER BY fecha RANGE BETWEEN INTERVAL '2 months' PRECEDING AND CURRENT ROW) AS maximo_costo
FROM costos_operacionales;

---EJERCICIO 19---
SELECT n.nombre AS negocios,
       ni.fecha,
	   ni.ingreso,
	   SUM(ni.ingreso)OVER(PARTITION BY n.nombre ORDER BY ni.fecha RANGE BETWEEN INTERVAL '9 months' PRECEDING AND CURRENT ROW) AS total_ingreso
FROM negocios n
INNER JOIN ingresos_negocios ni
ON n.negocio_id = ni.negocio_id;

---EJERCICIO 20---
SELECT n.nombre AS negocios,
       ni.fecha,
	   ni.ingreso,
	   AVG(ni.ingreso)OVER(PARTITION BY n.nombre ORDER BY ni.fecha RANGE BETWEEN INTERVAL '2 months' PRECEDING AND CURRENT ROW) AS promedio_ingreso
FROM negocios n
INNER JOIN ingresos_negocios ni
ON n.negocio_id = ni.negocio_id;