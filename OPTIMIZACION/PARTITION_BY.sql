CREATE TABLE pacientes (
   paciente_id SERIAL PRIMARY KEY,
   nombre VARCHAR (100) NOT NULL,
   edad INT,
   genero VARCHAR (2),
   direccion VARCHAR (100) NOT NULL,
   telefono VARCHAR (15) UNIQUE
);


CREATE TABLE medicos (
   medico_id SERIAL PRIMARY KEY,
   nombre VARCHAR (100) NOT NULL,
   especialidad VARCHAR (50) NOT NULL,
   telefono VARCHAR (15) UNIQUE
);


CREATE TABLE citas_medicas (
   cita_id SERIAL,
   paciente_id INT NOT NULL,
   medico_id INT NOT NULL,
   fecha DATE,
   hora TIME,
   motivo VARCHAR (100),
   PRIMARY KEY (cita_id, fecha),
   FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id) ON DELETE CASCADE,
   FOREIGN KEY (medico_id) REFERENCES medicos (medico_id) ON DELETE CASCADE 
)PARTITION BY RANGE (fecha);

-- Particiones por fecha 
CREATE TABLE citas_medicas_2023 PARTITION OF citas_medicas
FOR VALUES FROM ('2023-01-01') TO ('2023-12-31');
CREATE TABLE citas_medicas_2024 PARTITION OF citas_medicas
FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');
CREATE TABLE citas_medicas_2025 PARTITION OF citas_medicas
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');



CREATE TABLE hospitalizaciones (
   hospitalizacion_id SERIAL,
   paciente_id INT NOT NULL,
   fecha_ingreso DATE NOT NULL,
   fecha_salida DATE,
   motivo VARCHAR(100),
   PRIMARY KEY (hospitalizacion_id, fecha_ingreso),
   FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id) ON DELETE CASCADE
) PARTITION BY RANGE (fecha_ingreso);

-- Particiones por fecha
CREATE TABLE hospitalizacion_enero PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-01-01') TO ('2025-01-30');
CREATE TABLE hospitalizacion_febrero PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-02-01') TO ('2025-02-28');
CREATE TABLE hospitalizacion_marzo PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-03-01') TO ('2025-03-31');
CREATE TABLE hospitalizacion_abril PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-04-01') TO ('2025-04-30');
CREATE TABLE hospitalizacion_mayo PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-05-01') TO ('2025-05-31');
CREATE TABLE hospitalizacion_junio PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-06-01') TO ('2025-06-30');
CREATE TABLE hospitalizacion_julio PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-07-01') TO ('2025-07-31');
CREATE TABLE hospitalizacion_agosto PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-08-01') TO ('2025-08-31');
CREATE TABLE hospitalizacion_septiembre PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-09-01') TO ('2025-09-30');
CREATE TABLE hospitalizacion_octubre PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-10-01') TO ('2025-10-31');
CREATE TABLE hospitalizacion_noviembre PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-11-01') TO ('2025-11-30');
CREATE TABLE hospitalizacion_diciembre PARTITION OF hospitalizaciones
FOR VALUES FROM ('2025-12-01') TO ('2025-12-31');
CREATE TABLE hospitalizacion_default PARTITION OF hospitalizaciones DEFAULT;
CREATE TABLE hospitalizacion_2026 PARTITION OF hospitalizaciones
FOR VALUES FROM ('2026-01-01') TO ('2026-12-31');

CREATE TABLE facturas (
   factura_id SERIAL,
   paciente_id INT NOT NULL,
   fecha DATE,
   total INT  CHECK (total > 0),
   PRIMARY KEY (factura_id, total),
   FOREIGN KEY (paciente_id) REFERENCES pacientes (paciente_id) ON DELETE CASCADE
)PARTITION BY RANGE (total);

CREATE TABLE facturas_bajas PARTITION OF facturas
FOR VALUES FROM (0) TO (10000);
CREATE TABLE facturas_medias PARTITION OF facturas
FOR VALUES FROM (10001) TO (50000);
CREATE TABLE facturas_altas PARTITION OF facturas
FOR VALUES FROM (50001) TO (MAXVALUE);


-- Insertar datos en la tabla de pacientes
INSERT INTO pacientes (nombre, edad, genero, direccion, telefono) VALUES
('Juan Pérez', 45, 'M', 'Calle 123, Bogotá', '3001234567'),
('Ana Gómez', 30, 'F', 'Carrera 45, Medellín', '3107654321'),
('Carlos López', 50, 'M', 'Avenida 7, Cali', '3209876543'),
('María Rodríguez', 35, 'F', 'Calle 89, Barranquilla', '3056789123');

-- Insertar datos en la tabla de médicos
INSERT INTO medicos (nombre, especialidad, telefono) VALUES
('Dr. Luis Fernández', 'Cardiología', '3112345678'),
('Dra. Carmen Martínez', 'Pediatría', '3128765432'),
('Dr. Ricardo Sánchez', 'Neurología', '3139876543'),
('Dra. Laura Herrera', 'Dermatología', '3145678901');

-- Insertar datos en la tabla de citas médicas (Particionada por fecha)
INSERT INTO citas_medicas (paciente_id, medico_id, fecha, hora, motivo) VALUES
(9, 5, '2023-05-15', '10:00', 'Control de presión arterial'),
(10, 6, '2023-08-20', '14:30', 'Chequeo pediátrico'),
(11, 7, '2024-03-10', '09:00', 'Dolores de cabeza frecuentes'),
(12, 8, '2025-06-25', '16:00', 'Alergia en la piel');

-- Insertar datos en la tabla de hospitalizaciones (Particionada por fecha_ingreso)
INSERT INTO hospitalizaciones (paciente_id, fecha_ingreso, fecha_salida, motivo) VALUES
(9, '2025-01-05', '2025-01-10', 'Cirugía de bypass'),
(10, '2025-02-15', '2025-02-18', 'Neumonía'),
(11, '2025-04-20', '2025-04-25', 'Recuperación post-operatoria'),
(12, '2025-07-10', '2025-07-20', 'Tratamiento intensivo');

-- Insertar datos en la tabla de facturas (Particionada por total)
INSERT INTO facturas (paciente_id, fecha, total) VALUES
(9, '2025-01-10', 5000),   -- Factura baja
(10, '2025-02-18', 20000),  -- Factura media
(11, '2025-04-25', 75000),  -- Factura alta
(12, '2025-07-20', 12000);  -- Factura media


-- INDEX en fecha de citas_medicas
CREATE INDEX idx_citas_medicas_fecha
ON citas_medicas (fecha);

-- EJERCICIO 1
EXPLAIN ANALYZE
SELECT cita_id, fecha
FROM citas_medicas
WHERE fecha >= '2023-01-01' AND fecha <= '2023-12-31';

-- EJERCICIO 2
SELECT EXTRACT (MONTH FROM fecha_ingreso) AS mes,
COUNT(*) AS total_hospitalizaciones
FROM hospitalizaciones
GROUP BY mes
ORDER BY mes;

-- EJERCICIO 3
EXPLAIN ANALYZE
SELECT total 
FROM facturas 
WHERE total > 50000;

-- EJERCICIO 4
INSERT INTO citas_medicas (paciente_id, medico_id, fecha, hora, motivo)
VALUES (9,5,'2022-01-30','10:00', 'Control de presión arterial');

-- EJERCICIO 5
DROP TABLE citas_medicas_2023;

-- EJERCICIO 6
EXPLAIN ANALYZE 
SELECT factura_id
FROM facturas;

EXPLAIN ANALYZE 
SELECT nombre
FROM pacientes;

-- EJERCICIO 7
ALTER TABLE hospitalizaciones
ADD COLUMN analisis VARCHAR(50) DEFAULT 'Negativo';

EXPLAIN ANALYZE
SELECT fecha_ingreso FROM hospitalizaciones;

-- EJERCICIO 8 
EXPLAIN ANALYZE
SELECT EXTRACT (YEAR FROM fecha) AS ano,
       COUNT(*) AS total_de_citas
FROM citas_medicas 
GROUP BY ano
ORDER BY ano;

-- EJERCICIO 9
DELETE FROM hospitalizaciones
WHERE fecha_ingreso < CURRENT_DATE - INTERVAL '5 year';

-- EJERCICIO 10
EXPLAIN ANALYZE
SELECT * FROM citas_medicas;

-- EJERCICIO 11
CREATE INDEX idx_hospitalizacion_febrero_fecha_ingreso
ON hospitalizacion_febrero(fecha_ingreso);
EXPLAIN ANALYZE
SELECT hospitalizacion_id,
       fecha_ingreso
FROM hospitalizaciones
WHERE fecha_ingreso >= '2025-02-01' AND fecha_ingreso <= '2025-02-28';

-- EJERCICIO 12
EXPLAIN ANALYZE
SELECT cita_id,
       paciente_id,
       fecha,
	   DENSE_RANK()OVER(PARTITION BY paciente_id ORDER BY fecha) AS citas_realizadas 
FROM citas_medicas;

-- EJERCICIO 13
EXPLAIN ANALYZE
SELECT m.nombre AS medico,
       COUNT(p.paciente_id) AS total_paciente
FROM citas_medicas cm
JOIN medicos m ON cm.medico_id = m.medico_id
JOIN pacientes p ON cm.paciente_id = p.paciente_id
GROUP BY medico;


SELECT * FROM pacientes;


