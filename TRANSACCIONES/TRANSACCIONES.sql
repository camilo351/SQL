CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
	nombre VARCHAR (50) NOT NULL,
	apellido VARCHAR (50),
	direccion VARCHAR (100) NOT NULL,
	telefono VARCHAR (15) UNIQUE,
	email VARCHAR (100) UNIQUE
);

CREATE TABLE cuentas_bancarias (
    cuenta_id SERIAL PRIMARY KEY,
	cliente_id INT NOT NULL,
	tipo_cuenta VARCHAR (20), --Ahorro, corriente
    saldo NUMERIC(10,2) NOT NULL,
	fecha_apertura DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

CREATE TABLE transacciones (
    transaccion_id SERIAL PRIMARY KEY,
	cuenta_id INT NOT NULL,
	tipo_transaccion VARCHAR (30), --Deposito, retiro, transferencia
	monto NUMERIC(10,2) NOT NULL,
	fecha DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY (cuenta_id) REFERENCES cuentas_bancarias (cuenta_id)
);

CREATE TABLE prestamos (
    prestamo_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    monto_prestamo NUMERIC(10,2) NOT NULL,
    tasa_interes NUMERIC(5,2) GENERATED ALWAYS AS 
        (CASE 
            WHEN monto_prestamo < 5000 THEN 5.0
            WHEN monto_prestamo BETWEEN 5000 AND 10000 THEN 4.5
            ELSE 4.0
        END) STORED,
	plazo_pago DATE,
	estado VARCHAR (30), --Activo, pagado, vencido
    FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

CREATE TABLE pagos_prestamos (
   pago_id SERIAL PRIMARY KEY,
   prestamo_id INT NOT NULL,
   monto_pagado NUMERIC (10,2),
   fecha_pago DATE,
   FOREIGN KEY (prestamo_id) REFERENCES prestamos (prestamo_id)
);

CREATE TABLE tarjetas_credito (
   tarjeta_id SERIAL PRIMARY KEY,
   cliente_id INT NOT NULL,
   limite_credito NUMERIC(10,2) DEFAULT 10000.00,
   saldo_actual NUMERIC (10,2) CHECK (saldo_actual > 0),
   fecha_emision DATE,
   fecha_vencimiento DATE DEFAULT '2030-12-31',
   FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

CREATE TABLE pagos_tarjeta_credito (
   pago_id SERIAL PRIMARY KEY,
   tarjeta_id INT NOT NULL,
   monto_pagado NUMERIC (10,2),
   fecha_pago DATE,
   FOREIGN KEY (tarjeta_id) REFERENCES tarjetas_credito (tarjeta_id)
);

-- DATOS DE LAS TABLAS 
INSERT INTO clientes (nombre, apellido, direccion, telefono, email) VALUES
('Juan', 'Pérez', 'Calle 123, Ciudad A', '3001234567', 'juan.perez@example.com'),
('María', 'López', 'Avenida 45, Ciudad B', '3012345678', 'maria.lopez@example.com'),
('Carlos', 'Gómez', 'Carrera 67, Ciudad C', '3023456789', 'carlos.gomez@example.com'),
('Ana', 'Martínez', 'Diagonal 89, Ciudad D', '3034567890', 'ana.martinez@example.com'),
('Luis', 'Rodríguez', 'Transversal 12, Ciudad E', '3045678901', 'luis.rodriguez@example.com'),
('Elena', 'Fernández', 'Calle 98, Ciudad F', '3056789012', 'elena.fernandez@example.com'),
('Pedro', 'Sánchez', 'Avenida 67, Ciudad G', '3067890123', 'pedro.sanchez@example.com'),
('Laura', 'Díaz', 'Carrera 78, Ciudad H', '3078901234', 'laura.diaz@example.com'),
('Javier', 'Torres', 'Diagonal 56, Ciudad I', '3089012345', 'javier.torres@example.com'),
('Carmen', 'Ruiz', 'Transversal 34, Ciudad J', '3090123456', 'carmen.ruiz@example.com'),
('Sofía', 'Hernández', 'Calle 45, Ciudad K', '3101234567', 'sofia.hernandez@example.com'),
('Ricardo', 'Castro', 'Avenida 89, Ciudad L', '3112345678', 'ricardo.castro@example.com'),
('Isabel', 'Mendoza', 'Carrera 23, Ciudad M', '3123456789', 'isabel.mendoza@example.com'),
('Andrés', 'Guerrero', 'Diagonal 78, Ciudad N', '3134567890', 'andres.guerrero@example.com'),
('Paula', 'Vargas', 'Transversal 45, Ciudad O', '3145678901', 'paula.vargas@example.com'),
('Fernando', 'Jiménez', 'Calle 12, Ciudad P', '3156789012', 'fernando.jimenez@example.com'),
('Gabriela', 'Ortiz', 'Avenida 34, Ciudad Q', '3167890123', 'gabriela.ortiz@example.com'),
('Hugo', 'Silva', 'Carrera 56, Ciudad R', '3178901234', 'hugo.silva@example.com'),
('Daniela', 'Paredes', 'Diagonal 67, Ciudad S', '3189012345', 'daniela.paredes@example.com'),
('Roberto', 'Cruz', 'Transversal 78, Ciudad T', '3190123456', 'roberto.cruz@example.com'),
('Mónica', 'Ríos', 'Calle 89, Ciudad U', '3201234567', 'monica.rios@example.com'),
('Oscar', 'Navarro', 'Avenida 12, Ciudad V', '3212345678', 'oscar.navarro@example.com'),
('Patricia', 'Salazar', 'Carrera 45, Ciudad W', '3223456789', 'patricia.salazar@example.com'),
('Eduardo', 'Figueroa', 'Diagonal 34, Ciudad X', '3234567890', 'eduardo.figueroa@example.com'),
('Raquel', 'Delgado', 'Transversal 23, Ciudad Y', '3245678901', 'raquel.delgado@example.com'),
('Esteban', 'Mora', 'Calle 67, Ciudad Z', '3256789012', 'esteban.mora@example.com'),
('Clara', 'Mejía', 'Avenida 78, Ciudad AA', '3267890123', 'clara.mejia@example.com'),
('Alberto', 'Rosales', 'Carrera 89, Ciudad BB', '3278901234', 'alberto.rosales@example.com'),
('Verónica', 'Escobar', 'Diagonal 12, Ciudad CC', '3289012345', 'veronica.escobar@example.com'),
('Miguel', 'Campos', 'Transversal 45, Ciudad DD', '3290123456', 'miguel.campos@example.com');

INSERT INTO cuentas_bancarias (cliente_id, tipo_cuenta, saldo) VALUES
(1, 'Ahorro', 5000.00),
(2, 'Corriente', 12000.50),
(3, 'Ahorro', 7500.25),
(4, 'Corriente', 9800.75),
(5, 'Ahorro', 4300.00),
(6, 'Corriente', 25000.00),
(7, 'Ahorro', 13400.90),
(8, 'Corriente', 6700.50),
(9, 'Ahorro', 8900.30),
(10, 'Corriente', 7600.20),
(11, 'Ahorro', 3000.00),
(12, 'Corriente', 15700.10),
(13, 'Ahorro', 5400.00),
(14, 'Corriente', 6200.25),
(15, 'Ahorro', 8000.00),
(16, 'Corriente', 23000.75),
(17, 'Ahorro', 11000.90),
(18, 'Corriente', 4500.00),
(19, 'Ahorro', 7700.50),
(20, 'Corriente', 9600.00),
(21, 'Ahorro', 3800.75),
(22, 'Corriente', 12000.00),
(23, 'Ahorro', 6400.20),
(24, 'Corriente', 8500.00),
(25, 'Ahorro', 9200.30),
(26, 'Corriente', 13000.50),
(27, 'Ahorro', 5900.00),
(28, 'Corriente', 7100.75),
(29, 'Ahorro', 4300.25),
(30, 'Corriente', 9800.00);

INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha) VALUES
(1, 'Deposito', 500.00, '2024-01-11'),
(2, 'retiro', 250.00, '2024-01-12'),
(3, 'transferencia', 300.50, '2024-01-13'),
(4, 'Deposito', 450.75, '2024-01-14'),
(5, 'retiro', 100.00, '2024-01-15'),
(6, 'transferencia', 600.00, '2024-01-16'),
(7, 'Deposito', 700.25, '2024-01-17'),
(8, 'retiro', 80.00, '2024-01-18'),
(9, 'transferencia', 1500.00, '2024-01-19'),
(10, 'Deposito', 220.00, '2024-01-20'),
(11, 'retiro', 320.50, '2024-01-21'),
(12, 'transferencia', 410.75, '2024-01-22'),
(13, 'Deposito', 580.00, '2024-01-23'),
(14, 'retiro', 90.25, '2024-01-24'),
(15, 'transferencia', 300.00, '2024-01-25'),
(16, 'Deposito', 420.00, '2024-01-26'),
(17, 'retiro', 150.75, '2024-01-27'),
(18, 'transferencia', 600.00, '2024-01-28'),
(19, 'Deposito', 720.50, '2024-01-29'),
(20, 'retiro', 80.00, '2024-01-30'),
(21, 'transferencia', 650.00, '2024-02-01'),
(22, 'Deposito', 500.25, '2024-02-02'),
(23, 'retiro', 220.50, '2024-02-03'),
(24, 'transferencia', 310.75, '2024-02-04'),
(25, 'Deposito', 580.00, '2024-02-05'),
(26, 'retiro', 90.25, '2024-02-06'),
(27, 'transferencia', 310.00, '2024-02-07'),
(28, 'Deposito', 420.00, '2024-02-08'),
(29, 'retiro', 150.75, '2024-02-09'),
(30, 'transferencia', 600.00, '2024-02-10'),
(1, 'Deposito', 720.50, '2024-02-11'),
(2, 'retiro', 80.00, '2024-02-12'),
(3, 'transferencia', 650.00, '2024-02-13'),
(4, 'Deposito', 500.25, '2024-02-14'),
(5, 'retiro', 220.50, '2024-02-15'),
(6, 'transferencia', 310.75, '2024-02-16'),
(7, 'Deposito', 580.00, '2024-02-17'),
(8, 'retiro', 90.25, '2024-02-18'),
(9, 'transferencia', 310.00, '2024-02-19'),
(10, 'Deposito', 420.00, '2024-02-20'),
(11, 'retiro', 150.75, '2024-02-21'),
(12, 'transferencia', 600.00, '2024-02-22'),
(13, 'Deposito', 720.50, '2024-02-23'),
(14, 'retiro', 80.00, '2024-02-24'),
(15, 'transferencia', 650.00, '2024-02-25'),
(16, 'Deposito', 500.25, '2024-02-26'),
(17, 'retiro', 220.50, '2024-02-27'),
(18, 'transferencia', 310.75, '2024-02-28'),
(19, 'Deposito', 580.00, '2024-02-29'),
(20, 'retiro', 90.25, '2024-03-01');

INSERT INTO prestamos (cliente_id, monto_prestamo, plazo_pago, estado) VALUES
(1, 3000.00, '2025-12-31', 'Activo'),
(2, 4500.00, '2025-10-15', 'Activo'),
(3, 7500.00, '2025-11-20', 'Activo'),
(4, 12000.00, '2025-09-10', 'Activo'),
(5, 5000.00, '2025-08-05', 'Pagado'),
(6, 3200.00, '2025-07-15', 'Activo'),
(7, 9800.00, '2025-12-01', 'Vencido'),
(8, 11000.00, '2025-06-30', 'Activo'),
(9, 4800.00, '2025-05-25', 'Pagado'),
(10, 6000.00, '2025-04-20', 'Activo'),
(11, 3500.00, '2025-03-15', 'Vencido'),
(12, 8000.00, '2025-02-10', 'Activo'),
(13, 15000.00, '2025-01-05', 'Pagado'),
(14, 4900.00, '2024-12-31', 'Vencido'),
(15, 7000.00, '2024-11-30', 'Activo'),
(16, 8500.00, '2024-10-25', 'Pagado'),
(17, 2500.00, '2024-09-20', 'Activo'),
(18, 9000.00, '2024-08-15', 'Activo'),
(19, 13000.00, '2024-07-10', 'Pagado'),
(20, 4000.00, '2024-06-05', 'Vencido');


INSERT INTO pagos_prestamos (prestamo_id, monto_pagado, fecha_pago) VALUES
(1, 1000.00, '2025-06-15'),
(2, 1500.00, '2025-07-10'),
(3, 2000.00, '2025-08-05'),
(4, 2500.00, '2025-09-01'),
(5, 3000.00, '2025-09-15'),
(6, 1200.00, '2025-10-10'),
(7, 1800.00, '2025-10-20'),
(8, 2200.00, '2025-11-05'),
(9, 800.00, '2025-11-15'),
(10, 2700.00, '2025-12-01'),
(11, 1300.00, '2025-12-10'),
(12, 2400.00, '2025-12-20'),
(13, 3500.00, '2026-01-05'),
(14, 900.00, '2026-01-15'),
(15, 2100.00, '2026-02-01'),
(16, 2300.00, '2026-02-10'),
(17, 1100.00, '2026-02-20'),
(18, 1900.00, '2026-03-01'),
(19, 2600.00, '2026-03-10'),
(20, 1400.00, '2026-03-20');

INSERT INTO tarjetas_credito (cliente_id, limite_credito, saldo_actual, fecha_emision, fecha_vencimiento) VALUES
(1, 10000.00, 500.00, '2022-01-15', '2030-12-31'),
(2, 15000.00, 1200.00, '2022-02-10', '2030-12-31'),
(3, 12000.00, 750.50, '2022-03-05', '2030-12-31'),
(4, 10000.00, 300.00, '2022-04-01', '2030-12-31'),
(5, 8000.00, 600.00, '2022-05-15', '2030-12-31'),
(6, 20000.00, 900.00, '2022-06-20', '2030-12-31'),
(7, 11000.00, 450.75, '2022-07-10', '2030-12-31'),
(8, 10000.00, 800.00, '2022-08-05', '2030-12-31'),
(9, 10000.00, 950.25, '2022-09-01', '2030-12-31'),
(10, 15000.00, 1100.00, '2022-10-15', '2030-12-31'),
(11, 12000.00, 650.00, '2022-11-20', '2030-12-31'),
(12, 13000.00, 700.00, '2022-12-05', '2030-12-31'),
(13, 10000.00, 850.50, '2023-01-10', '2030-12-31'),
(14, 14000.00, 400.00, '2023-02-15', '2030-12-31'),
(15, 10000.00, 550.00, '2023-03-20', '2030-12-31'),
(16, 9000.00, 620.00, '2023-04-25', '2030-12-31'),
(17, 16000.00, 800.00, '2023-05-30', '2030-12-31'),
(18, 10000.00, 470.00, '2023-06-10', '2030-12-31'),
(19, 11000.00, 530.00, '2023-07-15', '2030-12-31'),
(20, 12000.00, 670.00, '2023-08-20', '2030-12-31'),
(21, 10000.00, 720.00, '2023-09-25', '2030-12-31'),
(22, 15000.00, 810.00, '2023-10-30', '2030-12-31'),
(23, 10000.00, 920.00, '2023-11-05', '2030-12-31'),
(24, 13000.00, 580.00, '2023-12-10', '2030-12-31'),
(25, 10000.00, 640.00, '2024-01-15', '2030-12-31');

INSERT INTO pagos_tarjeta_credito (tarjeta_id, monto_pagado, fecha_pago) VALUES
(1, 100.50, '2024-02-01'),
(2, 200.75, '2024-02-02'),
(3, 150.00, '2024-02-03'),
(4, 300.25, '2024-02-04'),
(5, 250.50, '2024-02-05'),
(6, 400.00, '2024-02-06'),
(7, 175.75, '2024-02-07'),
(8, 350.25, '2024-02-08'),
(9, 500.00, '2024-02-09'),
(10, 425.50, '2024-02-10'),
(11, 310.00, '2024-02-11'),
(12, 220.50, '2024-02-12'),
(13, 330.00, '2024-02-13'),
(14, 410.75, '2024-02-14'),
(15, 525.00, '2024-02-15'),
(16, 600.00, '2024-02-16'),
(17, 275.50, '2024-02-17'),
(18, 315.25, '2024-02-18'),
(19, 450.00, '2024-02-19'),
(20, 500.50, '2024-02-20'),
(21, 620.00, '2024-02-21'),
(22, 700.75, '2024-02-22'),
(23, 800.00, '2024-02-23'),
(24, 850.50, '2024-02-24'),
(25, 900.00, '2024-02-25');

-- EJERCICIO 1
BEGIN;
  INSERT INTO clientes (nombre, apellido, direccion, telefono, email) 
  VALUES ('Camilo', 'Hernandez', 'Calle 323, Ciudad C', '3225656098', 'camilo.hernandez.0627@gmail.com');
  INSERT INTO cuentas_bancarias (cliente_id, tipo_cuenta, saldo)
  VALUES (31, 'Ahorro', 12000.50);
COMMIT;

-- EJERCICIO 2
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (1, 'Deposito', 200.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = 200.00 + saldo
  WHERE cuenta_id = 1;
COMMIT;

-- EJERCICIO 3
BEGIN;
   SELECT cliente_id, 
          saldo
   FROM cuentas_bancarias
   WHERE cliente_id = 31;

   INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
   VALUES (31, 'Retiro', 500.00, CURRENT_DATE);

   UPDATE cuentas_bancarias SET saldo = saldo - 500.00
   WHERE cuenta_id = 31
   AND saldo >= 500.00;

   SELECT saldo FROM cuentas_bancarias WHERE cuenta_id = 31;
COMMIT;

-- EJERCICIO 4
BEGIN;
   INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
   VALUES (1, 'transferencia', 2000.00, CURRENT_DATE);
   
   UPDATE cuentas_bancarias SET saldo = saldo- 2000.00
   WHERE cuenta_id = 1
   AND saldo >= 2000.00;

   INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
   VALUES (31, 'Deposito', 2000.00, CURRENT_DATE);

   UPDATE cuentas_bancarias SET saldo = saldo + 2000.00
   WHERE cuenta_id = 31;

   SELECT cuenta_id,
          saldo
   FROM cuentas_bancarias
   WHERE cuenta_id IN (1, 31);
COMMIT;

-- EJERCICIO 5
BEGIN;
  INSERT INTO prestamos (cliente_id, monto_prestamo, plazo_pago, estado) VALUES
  (31, 40000.00, '2026-01-01', 'Activo');
COMMIT;

-- EJERCICIO 6
BEGIN;
  INSERT INTO pagos_prestamos (prestamo_id, monto_pagado, fecha_pago) VALUES
  (21, 10000.00, CURRENT_DATE);

  UPDATE prestamos SET monto_prestamo = monto_prestamo - 10000.00
  WHERE prestamo_id = 21;
COMMIT;


-- EJERCICIO 7
BEGIN;
  INSERT INTO pagos_tarjeta_credito (tarjeta_id, monto_pagado, fecha_pago) VALUES
  (25, 300.00, CURRENT_DATE);

  UPDATE tarjetas_credito SET saldo_actual = saldo_actual - 300.00
  WHERE tarjeta_id = 25 AND saldo_actual >= 300.00;

  SELECT saldo_actual FROM tarjetas_credito WHERE tarjeta_id = 25;
COMMIT;

-- EJERCICIO 8
BEGIN;
  SELECT saldo_actual FROM tarjetas_credito WHERE tarjeta_id = 25;

  INSERT INTO pagos_tarjeta_credito (tarjeta_id, monto_pagado, fecha_pago)
  VALUES (25, 300.00, CURRENT_DATE);

  UPDATE tarjetas_credito SET saldo_actual = saldo_actual - 300.00
  WHERE tarjeta_id = 25 AND saldo_actual >= 300.00;

  SELECT saldo_actual FROM tarjetas_credito WHERE tarjeta_id = 25;
COMMIT;


-- EJERCICIO 9
BEGIN;
  SELECT monto_prestamo, estado
  FROM prestamos
  WHERE prestamo_id = 17;
  
  INSERT INTO pagos_prestamos (prestamo_id, monto_pagado, fecha_pago)
  VALUES (17, 2500.00, CURRENT_DATE);

  UPDATE prestamos SET monto_prestamo = monto_prestamo - 2500.00
  WHERE prestamo_id = 17;

  UPDATE prestamos SET estado = 'Pagado'
  WHERE prestamo_id = 17 AND monto_prestamo = 0;
COMMIT;


-- EJRCICIO 10
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'Retiro', 300.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo - 300.00
  WHERE cuenta_id = 31 AND saldo >= 300.00;

  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'Deposito', 2000.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo + 2000.00
  WHERE cuenta_id = 31;

  SELECT saldo 
  FROM cuentas_bancarias
  WHERE cuenta_id = 31;
COMMIT;

-- EJERCICIO 11
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'Deposito', 400.00, CURRENT_DATE);

  SAVEPOINT A;

  UPDATE cuentas_bancarias SET saldo = saldo + 400.00
  WHERE cuenta_id = 31;

  SELECT * FROM cuentas_bancarias
  WHERE cuenta_id = 31;
COMMIT;
ROLLBACK;
-- EJERCICIO 12
BEGIN;
  INSERT INTO pagos_tarjeta_credito (tarjeta_id, monto_pagado, fecha_pago)
  VALUES (25, 300.00, CURRENT_DATE);

  UPDATE tarjetas_credito SET saldo_actual = saldo_actual - 300.00
  WHERE tarjeta_id = 25 AND saldo_actual >= 300.00;

  UPDATE tarjetas_credito SET limite_credito = 20000.00
  WHERE tarjeta_id = 25;

  SELECT * FROM tarjetas_credito 
  WHERE tarjeta_id = 25;
COMMIT;

-- EJERCICIO 13
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'transferencia', 2000.00, CURRENT_DATE);

  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (2, 'Deposito', 2000.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo - 2000.00
  WHERE cuenta_id = 31 AND saldo >= 2000.00;

  UPDATE cuentas_bancarias SET saldo = saldo + 2000.00
  WHERE cuenta_id = 2;

  SELECT cuenta_id, saldo
  FROM cuentas_bancarias
  WHERE cuenta_id IN (2, 31);
COMMIT;


--EJERCICIO 14
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'Deposito', 200.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo + 200.00
  WHERE cuenta_id = 31;

  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES(31, 'Deposito', 40000.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo + 40000.00
  WHERE cuenta_id = 31;

  SELECT cuenta_id, saldo
  FROM cuentas_bancarias 
  WHERE cuenta_id = 31;
COMMIT;


-- EJERCICIO 15
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'retiro', 500.00, CURRENT_DATE);

  SAVEPOINT B;

  UPDATE cuentas_bancarias SET saldo = saldo - 500.00
  WHERE cuenta_id = 31 AND saldo >= 500.00;
ROLLBACK;
COMMIT;

-- EJERCICIO 16
BEGIN;
  SELECT cliente_id,
         monto_prestamo,
		 tasa_interes,
		 SUM(tasa_interes / monto_prestamo) * 100 AS intereses,
		 estado
  FROM prestamos
  WHERE estado = 'Activo'
  GROUP BY cliente_id, monto_prestamo, tasa_interes, estado;
COMMIT;

-- EJERCICIIO 17
BEGIN;
  INSERT INTO pagos_prestamos (prestamo_id, monto_pagado, fecha_pago)
  VALUES (21, 30000.00, CURRENT_DATE);

  UPDATE prestamos SET monto_prestamo = monto_prestamo - 30000.00
  WHERE cliente_id = 31;

  UPDATE prestamos SET estado = 'Pagado'
  WHERE cliente_id = 31;

  UPDATE cuentas_bancarias SET saldo = saldo - 30000.00 
  WHERE cuenta_id = 31;
COMMIT;

--EJERCICIO 18
BEGIN;
  INSERT INTO pagos_tarjeta_credito (tarjeta_id, monto_pagado, fecha_pago)
  VALUES (10, 1000.00, CURRENT_DATE);

  UPDATE tarjetas_credito SET saldo_actual = saldo_actual - 1000.00
  WHERE tarjeta_id = 10 AND saldo_actual >= 1000.00;

  INSERT INTO pagos_prestamos (prestamo_id, monto_pagado, fecha_pago)
  VALUES (10, 1000.00, CURRENT_DATE);

  UPDATE prestamos SET monto_prestamo = monto_prestamo - 1000.00
  WHERE cliente_id = 10;
COMMIT;
ROLLBACK;

--EJERCICIO 19

--EJERCICIO 20
BEGIN;
  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (11, 'Transferencia' ,3000.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo - 3000.00
  WHERE cuenta_id = 11 AND saldo >= 3000.00;

  INSERT INTO transacciones (cuenta_id, tipo_transaccion, monto, fecha)
  VALUES (31, 'Deposito', 3000.00, CURRENT_DATE);

  UPDATE cuentas_bancarias SET saldo = saldo + 3000.00
  WHERE cuenta_id = 31;

  SELECT * FROM cuentas_bancarias
  WHERE cuenta_id IN (11, 31);

  DELETE FROM cuentas_bancarias WHERE cuenta_id = 11 AND saldo = 0.00;
COMMIT;
ROLLBACK;

  
  