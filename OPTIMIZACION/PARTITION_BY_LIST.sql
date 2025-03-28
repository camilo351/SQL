CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes (
    paciente_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    edad INT,
    genero VARCHAR(10),
    ciudad VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    PRIMARY KEY (paciente_id, ciudad)
) PARTITION BY LIST COLUMNS(ciudad) (
    PARTITION antioquia VALUES IN ('Medellín', 'Itagüi', 'Marinilla'),
    PARTITION atlantico VALUES IN ('Barranquilla', 'Galapa', 'Soledad'),
    PARTITION cundinamarca VALUES IN ('Bogotá')
);
-- EJERCICIO 5
ALTER TABLE pacientes ADD PARTITION 
(PARTITION arauca VALUES IN ('Arauca'));


CREATE TABLE medicos (
    medico_id INT NOT NULL,
    nombre VARCHAR (50),
    especialidad VARCHAR (50) NOT NULL,
    telefono VARCHAR (15),
    PRIMARY KEY (medico_id, especialidad)
) PARTITION BY LIST COLUMNS (especialidad) (
    PARTITION hematologia VALUES IN ('hematologia'),
    PARTITION cardiologia VALUES IN ('cardiologia'),
    PARTITION genetica VALUES IN ('genetica')
);

CREATE TABLE citas_medicas (
    cita_id INT NOT NULL,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    fecha DATETIME,
    tipo_de_consulta VARCHAR (50),
    PRIMARY KEY (cita_id, tipo_de_consulta)
) PARTITION BY LIST COLUMNS (tipo_de_consulta) (
    PARTITION generales VALUES IN ('general'),
    PARTITION urgencias VALUES IN ('Urgencias'),
    PARTITION especialidad VALUES IN ('Especialidad'),
    PARTITION control VALUES IN ('control')
);



-- DATOS Pacientes
INSERT INTO pacientes (paciente_id, nombre, edad, genero, ciudad, telefono) VALUES
(1, 'Juan Pérez', 30, 'Masculino', 'Medellín', '3011234567'),
(2, 'María Gómez', 25, 'Femenino', 'Itagüi', '3029876543'),
(3, 'Carlos Rodríguez', 40, 'Masculino', 'Marinilla', '3036543210'),
(4, 'Ana Fernández', 35, 'Femenino', 'Barranquilla', '3041112233'),
(5, 'Luis Martínez', 28, 'Masculino', 'Galapa', '3052223344'),
(6, 'Sofía Herrera', 22, 'Femenino', 'Soledad', '3063334455'),
(7, 'Ricardo López', 50, 'Masculino', 'Bogotá', '3074445566'),
(8, 'Elena Ríos', 27, 'Femenino', 'Medellín', '3085556677'),
(9, 'Andrés Castro', 31, 'Masculino', 'Itagüi', '3096667788'),
(10, 'Carmen Díaz', 42, 'Femenino', 'Marinilla', '3107778899'),
(11, 'Javier Torres', 33, 'Masculino', 'Barranquilla', '3118889900'),
(12, 'Patricia Vega', 26, 'Femenino', 'Galapa', '3129990011'),
(13, 'Gustavo Romero', 45, 'Masculino', 'Soledad', '3130001122'),
(14, 'Natalia Méndez', 29, 'Femenino', 'Bogotá', '3141112233'),
(15, 'Fernando Silva', 38, 'Masculino', 'Medellín', '3152223344'),
(16, 'Lucía Rojas', 24, 'Femenino', 'Itagüi', '3163334455'),
(17, 'Roberto Vargas', 41, 'Masculino', 'Marinilla', '3174445566'),
(18, 'Valeria Guzmán', 32, 'Femenino', 'Barranquilla', '3185556677'),
(19, 'Hugo Salazar', 37, 'Masculino', 'Galapa', '3196667788'),
(20, 'Mónica Jiménez', 23, 'Femenino', 'Soledad', '3207778899');

-- DATOS medicos
INSERT INTO medicos (medico_id, nombre, especialidad, telefono) VALUES
(1, 'Dr. Juan Pérez', 'hematologia', '3011234567'),
(2, 'Dra. María Gómez', 'hematologia', '3029876543'),
(3, 'Dr. Carlos Rodríguez', 'hematologia', '3036543210'),
(4, 'Dra. Ana Fernández', 'cardiologia', '3041112233'),
(5, 'Dr. Luis Martínez', 'cardiologia', '3052223344'),
(6, 'Dra. Sofía Herrera', 'cardiologia', '3063334455'),
(7, 'Dr. Ricardo López', 'genetica', '3074445566'),
(8, 'Dra. Elena Ríos', 'genetica', '3085556677'),
(9, 'Dr. Andrés Castro', 'genetica', '3096667788'),
(10, 'Dra. Carmen Díaz', 'genetica', '3107778899');

-- DATOS citas_medicas
INSERT INTO citas_medicas (cita_id, paciente_id, medico_id, fecha, tipo_de_consulta) VALUES
(1, 1, 1, '2025-03-01 08:30:00', 'general'),
(2, 2, 2, '2025-03-01 09:00:00', 'general'),
(3, 3, 3, '2025-03-01 10:00:00', 'general'),
(4, 4, 4, '2025-03-01 11:30:00', 'general'),
(5, 5, 5, '2025-03-01 12:00:00', 'general'),
(6, 6, 6, '2025-03-01 08:00:00', 'Urgencias'),
(7, 7, 1, '2025-03-01 08:45:00', 'Urgencias'),
(8, 8, 2, '2025-03-01 09:15:00', 'Urgencias'),
(9, 9, 3, '2025-03-01 09:45:00', 'Urgencias'),
(10, 10, 4, '2025-03-01 10:30:00', 'Urgencias'),
(11, 11, 5, '2025-03-01 11:00:00', 'Especialidad'),
(12, 12, 6, '2025-03-01 11:30:00', 'Especialidad'),
(13, 13, 1, '2025-03-01 12:00:00', 'Especialidad'),
(14, 14, 2, '2025-03-01 12:30:00', 'Especialidad'),
(15, 15, 3, '2025-03-01 13:00:00', 'Especialidad'),
(16, 16, 4, '2025-03-02 08:00:00', 'control'),
(17, 17, 5, '2025-03-02 08:30:00', 'control'),
(18, 18, 6, '2025-03-02 09:00:00', 'control'),
(19, 19, 1, '2025-03-02 09:30:00', 'control'),
(20, 20, 2, '2025-03-02 10:00:00', 'control');

SELECT * FROM pacientes;
SELECT * FROM medicos;

-- EJERCICIO 1
EXPLAIN ANALYZE 
SELECT *
FROM citas_medicas
WHERE tipo_de_consulta = 'urgencias';

-- EJERCICIO 2
EXPLAIN ANALYZE 
SELECT ciudad,
       COUNT(paciente_id) AS total_pacientes_por_departamento
FROM pacientes
GROUP BY ciudad;

-- EJERCICIO 3
EXPLAIN ANALYZE
SELECT *
FROM medicos
WHERE especialidad = 'genetica';

-- EJERCICIO 4
INSERT INTO medicos (medico_id, nombre, especialidad, telefono)
VALUES (11, 'Dr.Camilo Hernandez', 'genetica', '3225656098');

-- EJERCICIO 5
EXPLAIN ANALYZE
SELECT especialidad,
       COUNT(medico_id) AS total_medicos
FROM medicos
GROUP BY especialidad;

SET GLOBAL event_scheduler = ON;
CREATE EVENT eliminar_despues_de_5_años
ON SCHEDULE EVERY 1 DAY 
DO 
   DELETE FROM citas_medicas WHERE fecha < curdate() - INTERVAL 5 YEAR ;

