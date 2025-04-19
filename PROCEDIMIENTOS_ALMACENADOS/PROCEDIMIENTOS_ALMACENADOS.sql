-- TABLAS
CREATE TABLE clientes (
 cliente_id SERIAL PRIMARY KEY,
 nombre VARCHAR (100) NOT NULL,
 apellido VARCHAR (100) NOT NULL,
 correo VARCHAR (100) UNIQUE,
 telefono VARCHAR (15) UNIQUE,
 direccion VARCHAR (100),
 fecha_registro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE empleados (
 empleado_id SERIAL PRIMARY KEY,
 nombre VARCHAR (100) NOT NULL,
 apellido VARCHAR (100) NOT NULL,
 cargo VARCHAR (100) NOT NULL,
 salario NUMERIC (10,2) DEFAULT 1000.00,
 fecha_contratacion DATE DEFAULT CURRENT_DATE
);

CREATE TABLE categorias (
 categoria_id SERIAL PRIMARY KEY,
 nombre_categoria VARCHAR (100) NOT NULL,
 descripcion VARCHAR(100)
);

CREATE TABLE proveedores (
 proveedor_id SERIAL PRIMARY KEY,
 nombre_proveedor VARCHAR (100) NOT NULL,
 telefono VARCHAR (15) UNIQUE,
 direccion VARCHAR (100),
 correo VARCHAR (100) UNIQUE
);

CREATE TABLE productos (
 producto_id SERIAL PRIMARY KEY,
 nombre VARCHAR (100) NOT NULL,
 descripcion VARCHAR (100),
 precio NUMERIC (10, 2),
 categoria_id INT NOT NULL REFERENCES categorias (categoria_id),
 proveedor_id INT NOT NULL REFERENCES proveedores (proveedor_id)
);

CREATE TABLE inventario (
 inventario_id SERIAL PRIMARY KEY,
 producto_id INT REFERENCES productos (producto_id),
 cantidad INT,
 ubicacion VARCHAR (100),
 fecha_actualizacion DATE DEFAULT CURRENT_DATE
);

CREATE TABLE ventas (
 venta_id SERIAL PRIMARY KEY,
 cliente_id INT REFERENCES clientes (cliente_id),
 empleado_id INT REFERENCES empleados (empleado_id),
 fecha_venta DATE DEFAULT CURRENT_DATE,
 total NUMERIC (10,2)
);

CREATE TABLE detalle_venta (
 detalle_id SERIAL PRIMARY KEY,
 venta_id INT REFERENCES ventas (venta_id),
 producto_id INT REFERENCES productos (producto_id),
 cantidad INT NOT NULL,
 precio_unitario NUMERIC (10,2),
 subtotal NUMERIC (10,2) GENERATED ALWAYS AS (precio_unitario * cantidad) STORED
);

CREATE TABLE pagos (
 pago_id SERIAL PRIMARY KEY,
 cliente_id INT REFERENCES clientes (cliente_id),
 venta_id INT REFERENCES ventas (venta_id),
 monto NUMERIC (10,2) NOT NULL,
 metodo_pago VARCHAR (100),
 fecha_pago DATE DEFAULT CURRENT_DATE
);

CREATE TABLE devoluciones (
 devolucion_id SERIAL PRIMARY KEY,
 venta_id INT REFERENCES ventas (venta_id),
 producto_id INT REFERENCES productos (producto_id),
 cantidad INT,
 motivo VARCHAR (100) NOT NULL,
 fecha_devolucion DATE DEFAULT CURRENT_DATE
);

-- DATOS EN LAS TABLA CLIENTES
INSERT INTO clientes (nombre, apellido, correo, telefono, direccion) VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '3001234567', 'Calle 123 #45-67'),
('María', 'Gómez', 'maria.gomez@example.com', '3109876543', 'Carrera 89 #12-34'),
('Carlos', 'López', 'carlos.lopez@example.com', '3205551234', 'Avenida Siempre Viva 742'),
('Ana', 'Martínez', 'ana.martinez@example.com', '3001112233', 'Calle Falsa 123'),
('Luis', 'Rodríguez', 'luis.rodriguez@example.com', '3102223344', 'Diagonal 45 #67-89'),
('Sofía', 'Fernández', 'sofia.fernandez@example.com', '3203334455', 'Transversal 98 #76-54'),
('Miguel', 'Torres', 'miguel.torres@example.com', '3004445566', 'Circular 5 #43-21'),
('Laura', 'Díaz', 'laura.diaz@example.com', '3105556677', 'Calle 50 #20-30'),
('Andrés', 'Moreno', 'andres.moreno@example.com', '3206667788', 'Carrera 10 #5-15'),
('Patricia', 'Jiménez', 'patricia.jimenez@example.com', '3007778899', 'Avenida 33 #44-55');

-- DATOS EN LAS TABLA EMPLEADOS
INSERT INTO empleados (nombre, apellido, cargo, salario) VALUES
('Pedro', 'García', 'Vendedor', 1200.00),
('Lucía', 'Hernández', 'Cajero', 1100.00),
('Javier', 'Ruiz', 'Gerente', 2500.00),
('Elena', 'Sánchez', 'Asistente', 1000.00),
('Roberto', 'Ramírez', 'Supervisor', 1800.00),
('Natalia', 'Ortega', 'Recepcionista', 1050.00),
('Fernando', 'Castro', 'Contador', 2000.00),
('Gabriela', 'Alvarez', 'Analista', 1500.00),
('Diego', 'Vargas', 'Técnico', 1300.00),
('Mónica', 'Mendoza', 'Secretaria', 1150.00);

--DATOS EN LA TABLA CATEGORIAS
INSERT INTO categorias (nombre_categoria, descripcion) VALUES
('Electrónica', 'Dispositivos electrónicos y gadgets'),
('Hogar', 'Artículos para el hogar y decoración'),
('Deportes', 'Equipamiento deportivo y accesorios'),
('Moda', 'Ropa y accesorios de moda'),
('Alimentos', 'Productos alimenticios y bebidas'),
('Juguetes', 'Juguetes y juegos para niños'),
('Salud', 'Productos de salud y cuidado personal'),
('Automotriz', 'Accesorios y repuestos para vehículos'),
('Libros', 'Libros y material de lectura'),
('Muebles', 'Mobiliario para el hogar y oficina');

-- DATOS EN LA TABLA PROVEEDORES
INSERT INTO proveedores (nombre_proveedor, telefono, direccion, correo) VALUES
('ElectroSupplier S.A.', '3012345678', 'Calle 1 #23-45', 'contacto@electrosupplier.com'),
('HogarExpress Ltda.', '3119876543', 'Carrera 67 #89-10', 'ventas@hogarexpress.com'),
('Deportiva Nacional', '3215551234', 'Avenida 45 #67-89', 'info@deportivanacional.com'),
('ModaGlobal', '3011112233', 'Diagonal 12 #34-56', 'contacto@modaglobal.com'),
('Alimentos del Valle', '3112223344', 'Transversal 78 #90-12', 'ventas@alimentosdelvalle.com'),
('Juguetelandia', '3213334455', 'Circular 9 #87-65', 'info@juguetelandia.com'),
('Salud y Vida', '3014445566', 'Calle 56 #78-90', 'contacto@saludyvida.com'),
('AutoPartes S.A.', '3115556677', 'Carrera 34 #56-78', 'ventas@autopartes.com'),
('Libros y Letras', '3216667788', 'Avenida 23 #45-67', 'info@librosyletras.com'),
('Muebles Finos', '3017778899', 'Calle 89 #12-34', 'contacto@mueblesfinos.com');

-- DATOS EN LA TABLA PRODUCTOS
INSERT INTO productos (nombre, descripcion, precio, categoria_id, proveedor_id) VALUES
('Smartphone X', 'Teléfono inteligente de última generación', 999.99, 1, 1),
('Sofá Cama', 'Sofá convertible en cama de 2 plazas', 499.99, 10, 10),
('Bicicleta Montaña', 'Bicicleta para montaña con 21 velocidades', 299.99, 3, 3),
('Vestido Elegante', 'Vestido de noche talla M', 79.99, 4, 4),
('Cafetera Automática', 'Cafetera con programación y espumador', 129.99, 2, 2),
('Set de Pesas', 'Juego de pesas ajustables hasta 50kg', 199.99, 3, 3),
('Zapatillas Deportivas', 'Calzado para correr talla 42', 59.99, 4, 4),
('Libro de Cocina', 'Recetas gourmet para principiantes', 24.99, 9, 9),
('Monitor 24"', 'Pantalla LED Full HD de 24 pulgadas', 149.99, 1, 1),
('Escritorio Moderno', 'Escritorio de madera con acabado en nogal', 249.99, 10, 10);

-- DATOS EN LA TABLA INVENTARIO
INSERT INTO inventario (producto_id, cantidad, ubicacion, fecha_actualizacion) VALUES
(1, 100, 'Almacén A', '2025-04-01'),
(2, 10, 'Almacén B', '2025-04-02'),
(3, 75, 'Bodega Principal', '2025-04-03'),
(4, 200, 'Sucursal Norte', '2025-04-04'),
(5, 120, 'Sucursal Sur', '2025-04-05'),
(6, 90, 'Estantería 3', '2025-04-06'),
(7, 60, 'Estantería 1', '2025-04-07'),
(8, 30, 'Mostrador', '2025-04-08'),
(9, 110, 'Almacén C', '2025-04-09'),
(10, 80, 'Depósito Central', '2025-04-10');

-- DATOS EN LA TABLA VENTAS
INSERT INTO ventas (cliente_id, empleado_id, fecha_venta, total) VALUES
(1, 1, '2025-03-01', 1299.99),
(2, 2, '2025-03-02', 499.99),
(3, 3, '2025-03-03', 299.99),
(4, 4, '2025-03-04', 79.99),
(5, 5, '2025-03-05', 189.99),
(6, 6, '2025-03-06', 59.99),
(7, 7, '2025-03-07', 24.99),
(8, 8, '2025-03-08', 149.99),
(9, 9, '2025-03-09', 249.99),
(10, 10, '2025-03-10', 999.99);

-- DATOS EN LA TABLA DETALLES VENTAS
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 3, 433.99),
(2, 2, 1, 499.99),
(3, 3, 1, 299.99),
(4, 4, 1, 79.99),
(5, 5, 1, 189.99),
(6, 6, 1, 59.99),
(7, 7, 1, 24.99),
(8, 8, 1, 149.99),
(9, 9, 1, 249.99),
(10, 10, 1, 999.99);

-- DATOS EN LA TABLA PAGOS
INSERT INTO pagos (cliente_id, venta_id, monto, metodo_pago) VALUES
(1, 1, 1299.99, 'Tarjeta de crédito'),
(2, 2, 499.99, 'Efectivo'),
(3, 3, 299.99, 'Transferencia'),
(4, 4, 79.99, 'Tarjeta débito'),
(5, 5, 189.99, 'Nequi'),
(6, 6, 59.99, 'Daviplata'),
(7, 7, 24.99, 'Efectivo'),
(8, 8, 149.99, 'Tarjeta crédito'),
(9, 9, 249.99, 'Transferencia'),
(10, 10, 999.99, 'Efectivo');

-- DATOS EN LA TABLA DEVOLUCIONES
INSERT INTO devoluciones (venta_id, producto_id, cantidad, motivo) VALUES
(1, 1, 1, 'Producto defectuoso'),
(2, 2, 1, 'Cambio de modelo'),
(3, 3, 1, 'No era lo esperado'),
(4, 4, 1, 'Talla incorrecta'),
(5, 5, 1, 'Color equivocado'),
(6, 6, 1, 'Producto dañado'),
(7, 7, 1, 'Error en el pedido'),
(8, 8, 1, 'Cliente insatisfecho'),
(9, 9, 1, 'Repetido'),
(10, 10, 1, 'Falla de fábrica');

--EJERCICIO 1
CREATE PROCEDURE insertar_nuevo_cliente(
  IN nombre_cliente VARCHAR (100),
  IN apellido_cliente VARCHAR (100),
  IN correo_cliente VARCHAR (100),
  IN telefono_cliente VARCHAR (15),
  IN direccion_cliente VARCHAR (100)
)
LANGUAGE plpgsql
AS $$
BEGIN 
   INSERT INTO clientes (nombre, apellido, correo, telefono, direccion)
   VALUES (nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente, direccion_cliente);

   RAISE NOTICE 'Cliente agregado %', nombre_cliente;
END;
$$;

CALL insertar_nuevo_cliente ('Camilo', 'Hernandez', 'camilo.hernandez@gmail.com', '3225656098', 'CLL-Robledo');

--EJERCICIO 2
CREATE PROCEDURE actualizar_telefono (
  IN id_cliente INT,
  IN nuevo_telefono VARCHAR (15)
)
LANGUAGE plpgsql
AS $$
BEGIN 
  UPDATE clientes SET telefono = nuevo_telefono
  WHERE cliente_id = id_cliente;

  RAISE NOTICE 'Actualizacion del telefono realizada';
END;
$$;

CALL actualizar_telefono (11, '3116845446');

-- EJERCICIO 3
CREATE OR REPLACE PROCEDURE eliminar_inventario (
    IN id_producto INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM inventario
    WHERE producto_id = id_producto AND cantidad = 0;

    -- Verifica cuántas filas fueron eliminadas
    IF FOUND THEN
        RAISE NOTICE 'Eliminó correctamente el producto con ID %', id_producto;
    ELSE
        RAISE NOTICE 'Hay cantidad disponible o el producto no existe';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'Error al intentar eliminar: %', SQLERRM;
END;
$$;
CALL eliminar_inventario(1);

--EJERCICIO 4
CREATE OR REPLACE PROCEDURE total_ventas (
  IN id_cliente INTEGER,
  OUT total_cliente NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN 
  SELECT COALESCE(SUM(total), 0)
  INTO total_cliente
  FROM ventas
  WHERE cliente_id = id_cliente;

  IF FOUND THEN
    RAISE NOTICE 'el cliente a comprado el total de: %', total_cliente;
  ELSE 
    RAISE NOTICE  'el cliente no tiene ventas o no esta registrado';
  END IF;
END;
$$;

CALL total_ventas (124, NULL);

--EJERCICIO 5
CREATE OR REPLACE PROCEDURE aumentar_salario (
 IN id_empleado INT,
 IN porcentaje_aumento NUMERIC 
)
LANGUAGE plpgsql
AS $$
BEGIN 
  UPDATE empleados
  SET salario = salario + (salario * (porcentaje_aumento / 100))
  WHERE id_empleado = empleado_id;

  IF FOUND THEN
    RAISE NOTICE 'salario aumentado correctamente para el usuario con el ID: %', id_empleado;
  ELSE 
    RAISE NOTICE 'No se encontro ningun empleado con el ID: %', id_empleado;
  END IF;
END;
$$;

CALL aumentar_salario (2, 50);
SElECT * FROM empleados WHERE empleado_id = 2;

--EJERCICIO 6
CREATE OR REPLACE PROCEDURE insertar_venta_con_detalle(
    IN p_cliente_id INT,
    IN p_empleado_id INT,
    IN p_producto_id INT,
    IN p_cantidad INT,
    IN p_precio_unitario NUMERIC
)
LANGUAGE plpgsql
AS $$
DECLARE
    nueva_venta_id INT;
BEGIN
    -- Iniciar la transacción
    BEGIN
        -- Insertar en ventas
        INSERT INTO ventas(cliente_id, empleado_id)
        VALUES (p_cliente_id, p_empleado_id)
        RETURNING venta_id INTO nueva_venta_id;

        -- Insertar en detalle_venta
        INSERT INTO detalle_venta(venta_id, producto_id, cantidad, precio_unitario)
        VALUES (nueva_venta_id, p_producto_id, p_cantidad, p_precio_unitario);

        RAISE NOTICE 'Venta y detalle insertados correctamente. Venta ID: %', nueva_venta_id;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE EXCEPTION 'Error al insertar la venta y su detalle: %', SQLERRM;
    END;
END;
$$;

CALL insertar_venta_con_detalle(11,1,2,4,2000.00);

--EJERCICIO 7
CREATE OR REPLACE PROCEDURE numero_productos (
  IN id_categoria INT,
  OUT total_productos INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
  SELECT COALESCE(COUNT(categoria_id),0)
  INTO total_productos
  FROM productos
  WHERE categoria_id = id_categoria;

  IF total_productos > 0 THEN
    RAISE NOTICE 'los productos en la categoria % es de: %', id_categoria, total_productos;
  ELSE
    RAISE NOTICE 'No hay productos en la categoria %', id_categoria;
  END IF;
END;
$$;

CALL numero_productos (10, NULL);

--EJERCICIO 8
CREATE OR REPLACE PROCEDURE ventas_empleados (
  IN id_empleado INT,
  OUT total_ventas INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT COALESCE(SUM(empleado_id), 0) 
  INTO total_ventas
  FROM ventas
  WHERE empleado_id = id_empleado;

  IF total_ventas > 0 THEN
    RAISE NOTICE 'El empleado con ID: % vendio: %', id_empleado, total_ventas;
  ELSE 
    RAISE NOTICE 'El empleado no tiene ventas';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'Algo salio mal';
END;
$$;

CALL ventas_empleados (1, NULL);

--EJERCICIO 9
CREATE OR REPLACE PROCEDURE pagos_realizados (
  IN id_cliente INT
)
LANGUAGE plpgsql
AS $$
DECLARE r_pago RECORD;
BEGIN 
  FOR r_pago IN 
  SELECT pago_id, fecha_pago, monto
  FROM pagos
  WHERE cliente_id = id_cliente

  LOOP 
    RAISE NOTICE 'pago_id: %, Fecha: %, monto: %', r_pago.pago_id, r_pago.fecha_pago, r_pago.monto;
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR, no se encontraron los pagos';
END;
$$;

CALL pagos_realizados (10);

BEGIN;
  INSERT INTO ventas (cliente_id, empleado_id, fecha_venta, total)
  VALUES (10, 10, CURRENT_DATE, 1000.00);
 
  INSERT INTO pagos (cliente_id, venta_id,  monto, metodo_pago, fecha_pago)
  VALUES (10, 16, 1000.00, 'Efectivo', CURRENT_DATE);
COMMIT;
ROLLBACK;

--EJERCICIO 10
CREATE OR REPLACE PROCEDURE registrar_devoluciones (
  IN rd_venta_id INT,
  IN rd_producto_id INT,
  IN rd_cantidad INT,
  IN rd_motivo VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO devoluciones (venta_id, producto_id, cantidad, motivo)
  VALUES (rd_venta_id, rd_producto_id, rd_cantidad, rd_motivo);

  IF FOUND THEN 
    RAISE NOTICE 'Devolucion registrada exitosamente';
  ELSE 
    RAISE NOTICE 'no se pudo registrar la devolucion, verifica si la venta existe';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR';
END;
$$;

CALL registrar_devoluciones (20, 2, 3, 'No era la Talla');

--EJERICICIO 11
CREATE OR REPLACE PROCEDURE descuento_categoria (
  IN dc_categoria_id INT,
  IN dc_porcentaje_producto INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXISTS (SELECT 1
     FROM productos
	 WHERE categoria_id = dc_categoria_id) THEN 
     UPDATE productos
     SET precio = precio - (precio * dc_porcentaje_producto / 100.00)
     WHERE categoria_id = dc_categoria_id;
     RAISE NOTICE 'descuento aplicado: % al producto %', 
	              dc_porcentaje_producto, dc_categoria_id;
	 
  ELSE
    RAISE NOTICE 'no hay producto en la categoria %', dc_categoria_id;
  END IF;
  
EXCEPTION
  WHEN undefined_column THEN 
    RAISE NOTICE 'No se encuentra la columna especificada';
  WHEN OTHERS THEN
    RAISE NOTICE 'Ocurrio un error inesperado';
END;
$$;

CALL descuento_categoria (3, 100);

SELECT * FROM productos
WHERE categoria_id = 3;

--EJERCICIO 12
CREATE OR REPLACE PROCEDURE datos_clientes (
  IN dc_cliente_id INT,
  OUT dc_nombre VARCHAR,
  OUT dc_correo VARCHAR,
  OUT dc_telefono VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXISTS (
     SELECT 1
	 FROM clientes
	 WHERE cliente_id = dc_cliente_id
  ) THEN 
    SELECT nombre , correo, telefono
	INTO dc_nombre, dc_correo, dc_telefono
    FROM clientes
    WHERE cliente_id = dc_cliente_id;
    RAISE NOTICE 'nombre: %, correo: %, telefono: %', dc_nombre, dc_correo, dc_telefono;

  ELSE
    RAISE NOTICE 'No se encontro cliente con ID %', dc_cliente_id;
  END IF;
EXCEPTION
   WHEN OTHERS THEN
     RAISE NOTICE 'Upps, Ocurrio un error inesperado';
END;
$$;

CALL datos_clientes (11, NULL, NULL, NULL);

--EJERCICIO 13
CREATE OR REPLACE PROCEDURE registrar_productos (
  IN rp_nombre VARCHAR,
  IN rp_descripcion VARCHAR,
  IN rp_precio NUMERIC (10,2),
  IN rp_categoria_id INT,
  IN rp_proveedor_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO productos (nombre, descripcion, precio, categoria_id, proveedor_id)
  VALUES (rp_nombre, rp_descripcion, rp_precio, rp_categoria_id, rp_proveedor_id);
      RAISE NOTICE 'Se inserto el producto: % exitosamente', rp_nombre;
	  
EXCEPTION 
  WHEN OTHERS THEN
      RAISE NOTICE 'ERROR; algo salio mal';
END;
$$;

CALL registrar_productos('Redmi 9', 'celular inteligente', 2000.00, 1, 1);

--EJERCICIO 14
SELECT * FROM clientes;
CREATE OR REPLACE PROCEDURE registrar_cliente (
  IN rc_nombre VARCHAR,
  IN rc_apellido VARCHAR,
  IN rc_correo VARCHAR,
  IN rc_telefono VARCHAR,
  IN rc_direccion VARCHAR,
  IN rc_fecha_registro DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO clientes (nombre, apellido, correo, telefono, direccion, fecha_registro)
  VALUES (rc_nombre, rc_apellido, rc_correo, rc_telefono, rc_direccion, rc_fecha_registro);
  RAISE NOTICE 'El cliente % fue registrado exitosamente', rc_nombre;
  
EXCEPTION
  WHEN OTHERS THEN
  RAISE NOTICE 'ERROR detectado: %', SQLERRM;
END;
$$;

CALL registrar_cliente ('Sofia', 'Osorio', 'Sofia.osorio@gmail.com', '3225656098', 'CR22-23A', CURRENT_DATE);

--EJERCICIO 15
CREATE OR REPLACE PROCEDURE registrar_venta_detalle (
  IN rvd_cliente_id INT,
  IN rvd_empleado_id INT,
  IN rvd_producto_id INT,
  IN rvd_cantidad INT,
  IN rvd_precio_unitario NUMERIC
)
LANGUAGE plpgsql
AS $$
DECLARE nueva_venta_id INT;
BEGIN
  INSERT INTO ventas (cliente_id, empleado_id)
  VALUES (rvd_cliente_id, rvd_empleado_id)
  RETURNING venta_id INTO nueva_venta_id;

  INSERT INTO detalle_venta (venta_id, producto_id, cantidad, precio_unitario)
  VALUES (nueva_venta_id, rvd_producto_id, rvd_cantidad, rvd_precio_unitario);

  RAISE NOTICE 'Se inserto correctamente la venta y el detalle %', nueva_venta_id;

EXCEPTION
  WHEN OTHERS THEN
  RAISE NOTICE 'ERROR, hubo un problema inesperado %', SQLERRM;
END;
$$;

CALL registrar_venta_detalle (11, 2, 1, 1, 2000.00);

--EJERCICIO 16
CREATE OR REPLACE PROCEDURE registrar_categoria (
  IN rc_nombre_categoria VARCHAR,
  IN rc_descripcion VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN 
  INSERT INTO categorias (nombre_categoria, descripcion)
  VALUES (rc_nombre_categoria, rc_descripcion);

  RAISE NOTICE 'Nueva categoria registrada: %', rc_nombre_categoria;

EXCEPTION
  WHEN OTHERS THEN 
      RAISE NOTICE 'ERROR, algo salio mal: %', SQLERRM;
END;
$$;

CALL registrar_categoria ('Ropa', 'Pantalones de alta calidad');


CREATE TABLE compras (
 compra_id SERIAL PRIMARY KEY,
 proveedor_id INT REFERENCES proveedores (proveedor_id),
 fecha_compra DATE DEFAULT CURRENT_DATE
);

CREATE TABLE detalles_compra (
  detalles_id SERIAL PRIMARY KEY,
  compra_id INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario NUMERIC (10,2) 
);

--DATOS compras
INSERT INTO compras (proveedor_id, fecha_compra) VALUES
(1, '2025-04-01'),
(2, '2025-04-02'),
(3, '2025-04-03'),
(4, '2025-04-04'),
(5, '2025-04-05'),
(6, '2025-04-06'),
(7, '2025-04-07'),
(8, '2025-04-08'),
(9, '2025-04-09'),
(10, '2025-04-10');

-- DATOS detalles compra
INSERT INTO detalles_compra (compra_id, cantidad, precio_unitario) VALUES
(1, 100, 15.50),
(2, 200, 9.75),
(3, 150, 22.10),
(4, 80, 12.99),
(5, 60, 30.00),
(6, 90, 18.45),
(7, 50, 25.00),
(8, 120, 10.00),
(9, 70, 8.50),
(10, 130, 14.30);

--EJERCICIO 17
CREATE OR REPLACE PROCEDURE registrar_compra_detalles (
  IN rcd_proveedor_id INT,
  IN rcd_fecha_compra DATE,
  IN rcd_cantidad INT,
  IN rcd_precio_unitario NUMERIC
)
LANGUAGE plpgsql
AS $$
DECLARE 
  nueva_compra_id INT;
BEGIN
  IF NOT EXISTS (
    SELECT 1
	FROM proveedores
	WHERE proveedor_id = rcd_proveedor_id
  ) THEN 
      RAISE NOTICE 'El proveedor ID % no existe', rcd_proveedor_id;
  END IF;
  
  INSERT INTO compras (proveedor_id, fecha_compra)
  VALUES (rcd_proveedor_id, rcd_fecha_compra)
  RETURNING compra_id INTO nueva_compra_id;

  INSERT INTO detalle_compra (compra_id, cantidad, precio_unitario)
  VALUES (nueva_compra_id, rcd_cantidad, rcd_precio_unitario);

  RAISE NOTICE 'La compra con ID % fue regitrada con sus detalles %', rcd_compra_id, rcd_proveedor_id;

EXCEPTION 
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: la compra no se pudo registrar %', SQLERRM;
END;
$$; 

CALL registrar_compra_detalles (1, CURRENT_DATE, 3, 400.00);

-- EJERCICIO 18
CREATE OR REPLACE PROCEDURE registrar_proovedor (
  IN rp_nombre_proveedor VARCHAR,
  IN rp_telefono VARCHAR,
  IN rp_direccion VARCHAR,
  IN rp_correo VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO proveedores (nombre_proveedor, telefono, direccion, correo)
  VALUES (rp_nombre_proveedor, rp_telefono, rp_direccion, rp_correo);

  RAISE NOTICE 'El proveedor % fue registrado correctamente', rp_nombre_proveedor;

  EXCEPTION
    WHEN OTHERS THEN 
	  RAISE NOTICE 'ERROR, se encontro un problema inesperado: %', SQLREEM;
END;
$$;

CALL registrar_proovedor ('Camilo', '3225656098', 'Robledo', 'caremonda@gmail.com');

--EJERCICIO 19
CREATE OR REPLACE PROCEDURE registrar_devoluciones (
 IN rd_venta_id INT,
 IN rd_producto_id INT,
 IN rd_cantidad INT,
 IN rd_motivo VARCHAR,
 IN rd_fecha_devolucion DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF NOT EXISTS (
     SELECT 1
	 FROM ventas
	 WHERE venta_id = rd_venta_id
  ) THEN
  RAISE EXCEPTION 'No existe una venta con ID: %' , rd_venta_id;
  END IF;

  IF NOT EXISTS (
    SELECT 1
	FROM productos
	WHERE producto_id = rd_producto_id
  ) THEN
  RAISE EXCEPTION 'No existe un producto con ID: %', rd_producto_id;
  END IF;

  INSERT INTO devoluciones (venta_id, producto_id, cantidad, motivo, fecha_devolucion)
  VALUES (rd_venta_id, rd_producto_id, rd_cantidad, rd_motivo, rd_fecha_devolucion);

  RAISE NOTICE 'Se registro la devolucion exitosamente';

EXCEPTION 
  WHEN OTHERS THEN 
  RAISE NOTICE 'ERROR, Algo salio mal al intentar registrar la devolucion %', SQLERRM;
END;
$$;

CALL registrar_devoluciones (10, 7, 2, 'No me gusto', CURRENT_DATE);

--EJERCICIO 20
CREATE OR REPLACE PROCEDURE registrar_empleado (
  IN re_nombre VARCHAR,
  re_apellido VARCHAR,
  re_cargo VARCHAR,
  re_salario NUMERIC,
  re_fecha_contratacion DATE)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO empleados (nombre, apellido, cargo, salario, fecha_contratacion)
  VALUES (re_nombre, re_apellido, re_cargo, re_salario, re_fecha_contratacion);
  
  RAISE NOTICE 'El empleado % % se registro correctamente', re_nombre, re_apellido;
  
EXCEPTION 
  WHEN OTHERS THEN
  RAISE NOTICE 'ERROR: No se pudo registrar el empleado %', SQLERRM;
END;
$$;

CALL registrar_empleado ('camilo', 'hernandez', 'programador', 200000.00, CURRENT_DATE);

-- EJERCICIO 21
CREATE OR REPLACE PROCEDURE actualizar_cantidad(
  IN ac_producto_id INT,
  IN ac_nueva_cantidad INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF NOT EXISTS (
  SELECT 1 FROM productos WHERE producto_id = ac_producto_id
  ) THEN
  RAISE EXCEPTION 'el producto con ID % no existe', ac_producto_id;
  END IF;

  UPDATE inventario SET cantidad = ac_nueva_cantidad, fecha_actualizacion = CURRENT_DATE
  WHERE producto_id = ac_producto_id;

  RAISE NOTICE 'Se actualizo el inventario correctamente';
  
EXCEPTION
  WHEN OTHERS THEN 
  RAISE NOTICE 'ERROR, no se pudo actualizar el producto con ID: % %', ac_producto_id, SQLERRM;
END;
$$;

CALL actualizar_cantidad (10, 500);

--EJERCICIO 22
CREATE OR REPLACE PROCEDURE actualizar_precio (
  IN ap_producto_id INT,
  IN ap_precio NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM productos WHERE producto_id = ap_producto_id) THEN
  RAISE EXCEPTION 'El producto con ID % no existe', ap_producto_id;
  END IF;

  UPDATE productos SET precio = ap_precio
  WHERE producto_id = ap_producto_id;

  RAISE NOTICE 'Se actualizo exitosamente';

EXCEPTION 
  WHEN OTHERS THEN
  RAISE NOTICE 'ERROR, no se pudo actualizar el producto %', SQLERRM;
END; 
$$;

CALL actualizar_precio (4, 83.00);
SELECT * FROM productos;

--EJERCICIO 23
CREATE OR REPLACE PROCEDURE acctualizar_datos_clientes (
  IN adc_cliente_id INT DEFAULT NULL,
  IN adc_nombre VARCHAR DEFAULT NULL,
  IN adc_correo VARCHAR DEFAULT NULL,
  IN adc_direccion VARCHAR DEFAULT NULL
) 
LANGUAGE plpgsql
AS $$
BEGIN

  IF EXISTS (SELECT 1 FROM clientes WHERE cliente_id = adc_cliente_id) THEN
  UPDATE clientes SET
         nombre = COALESCE (adc_nombre, nombre),
         correo = COALESCE (adc_correo, correo),
		 direccion = COALESCE (adc_direccion, direccion)
		 
  WHERE cliente_id = adc_cliente_id;

  RAISE NOTICE 'Se actualizo el cliente % exitosamente', adc_cliente_id;

  ELSE 
    RAISE NOTICE 'El cliente con ID % no existe', adc_cliente_id;
  END IF;  

EXCEPTION 
WHEN OTHERS THEN 
  RAISE NOTICE 'ERROR: %', SQLERRM;
END;
$$;
CALL acctualizar_datos_clientes (1, 'camilo');

--EJERCICIO 24
CREATE OR REPLACE PROCEDURE actualizar_proveedor (
  IN ap_proveedor_id INT,
  IN ap_direccion VARCHAR DEFAULT NULL,
  IN ap_telefono VARCHAR DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM proveedores WHERE proveedor_id = ap_proveedor_id) THEN
      UPDATE proveedores SET 
	         direccion = COALESCE (ap_direccion, direccion),
			 telefono = COALESCE (ap_telefono, telefono)
			 WHERE proveedor_id = ap_proveedor_id;

	  RAISE NOTICE 'Se actualizo el proveedor % exitosamente', ap_proveedor_id;

	ELSE
	  RAISE NOTICE 'No se encontro el proveedor %', ap_proveedor_id;
	END IF;
	
EXCEPTION
    WHEN OTHERS THEN 
	  RAISE NOTICE 'ERROR: %',SQLERRM;
END;
$$;

CALL actualizar_proveedor (1, NULL, '3215656098' );

-- EJERCICIO 25
CREATE OR REPLACE PROCEDURE actualizar_salario (
  IN as_empleado_id INT,
  IN as_salario NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN 
  IF EXISTS (SELECT 1 FROM empleados WHERE empleado_id = as_empleado_id) THEN
     UPDATE empleados SET salario = as_salario
	 WHERE empleado_id = as_empleado_id;

	 RAISE NOTICE 'El salario del empleado % se actualizo correctamente', as_empleado_id;

  ELSE
     RAISE NOTICE 'El empleado con el ID % no existe', as_empleado_id;
  END IF;

EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: %', SQLERRM;
END;
$$;

CALL actualizar_salario (11, 3000000.00);

SELECT * FROM empleados;

--EJERCICIO 26
CREATE OR REPLACE PROCEDURE modificar_detalle_compra (
 IN mdc_detalle_id INT,
 IN mdc_cantidad INT DEFAULT NULL,
 IN mdc_precio_unitario INT DEFAULT NULL
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXISTS (SELECT 1 FROM detalles_compra WHERE mdc_detalle_id = detalles_id) THEN
     UPDATE detalles_compra SET 
	        cantidad = COALESCE(mdc_cantidad, cantidad),
			precio_unitario = COALESCE (mdc_precio_unitario, precio_unitario)
			WHERE detalles_id = mdc_detalle_id;

	 RAISE NOTICE 'El detalle de la compra se actualizo correctamente';
  ELSE
     RAISE NOTICE 'El detalle de compra con ID % no existe', mdc_detalle_id;
  END IF;
EXCEPTION
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL modificar_detalle_compra (1, 1000);

-- EJERCICIO 27
CREATE OR REPLACE PROCEDURE modificar_categoria (
  IN mc_categoria_id INT,
  IN mc_nombre_categoria VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN 
  IF EXISTS (SELECT 1 FROM categorias WHERE mc_categoria_id = categoria_id) THEN
     UPDATE categorias SET nombre_categoria = mc_nombre_categoria
	 WHERE categoria_id = mc_categoria_id;

	 RAISE NOTICE 'Se actualizo la categoria exitosamente';
  ELSE
     RAISE NOTICE 'No se encontro la categoria con ID %', mc_categoria_id;
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
     RAISE NOTICE 'ERROR: %', SQLERRM;
END;
$$;
  
CALL modificar_categoria (2, 'Tecnologia');

-- EJERCICIO 28
CREATE OR REPLACE PROCEDURE eliminar_producto (
  IN ep_producto_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
 IF EXISTS (SELECT 1 FROM productos WHERE producto_id = ep_producto_id) THEN
    DELETE FROM productos WHERE producto_id = ep_producto_id;

	RAISE NOTICE 'El producto % se elimino correctamente', ep_producto_id;
 ELSE
    RAISE NOTICE 'El producto: % no existe', ep_producto_id; 
 END IF;
EXCEPTION 
 WHEN OTHERS THEN 
   RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL eliminar_producto (70);

--EJERCICIO 29
CREATE OR REPLACE PROCEDURE eliminar_cliente (
  IN ec_cliente_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXISTS (SELECT 1 FROM clientes WHERE cliente_id = ec_cliente_id) THEN
    DELETE FROM clientes
	WHERE cliente_id = ec_cliente_id;

	RAISE NOTICE 'El cliente se elimino correctamente';
  ELSE 
    RAISE NOTICE 'El cliente con el ID % no existe', ec_cliente_id;
  END IF;
EXCEPTION
  WHEN foreign_key_violation THEN
    RAISE NOTICE 'No se puede eliminar el cliente con ID % porque se encuentra relacionado con otras compras', ec_cliente_id;
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL eliminar_cliente (1);

--EJERCICIO 30
CREATE OR REPLACE PROCEDURE eliminar_ventas (
  IN ev_venta_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
  IF EXISTS (SELECT 1 FROM ventas WHERE venta_id = ev_venta_id) THEN
     DELETE FROM ventas 
	 WHERE venta_id = ev_venta_id;

	 RAISE NOTICE 'Se elimino la venta con ID % exitosamente', ev_venta_id;
  ELSE
     RAISE NOTICE 'La venta con ID: % no existe', ev_venta_id;
  END IF;
EXCEPTION
  WHEN foreign_key_violation THEN
     RAISE NOTICE 'No se puede eliminar la venta con ID: % porque tiene relacion con otras tablas', ev_venta_id;
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL eliminar_ventas (1);

--EJERCICIO 31
CREATE OR REPLACE PROCEDURE eliminar_detalles_ventas (
  IN edv_detalle_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXISTS (SELECT 1 FROM detalle_venta WHERE detalle_id = edv_detalle_id) THEN
    DELETE FROM detalle_venta 
	WHERE detalle_id = edv_detalle_id;
    RAISE NOTICE 'El detalle venta con ID: % fue eliminado exitosamente', edv_detalle_id;
  ELSE 
    RAISE NOTICE 'El detalle venta con ID: % no existe', edv_detalle_id;
  END IF;
EXCEPTION
  WHEN foreign_key_violation THEN
    RAISE NOTICE 'No se puede eliminar porque el detalle venta con ID: % tiene relacion con otras tablas', edv_detalle_id;
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL eliminar_detalles_ventas (1);

--EJERCICIO 32
CREATE OR REPLACE PROCEDURE eliminar_proveedor (
  IN ep_proveedor_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
  IF EXISTS (SELECT 1 FROM proveedores WHERE proveedor_id = ep_proveedor_id) THEN
     DELETE FROM proveedores 
	 WHERE proveedor_id = ep_proveedor_id;

	 RAISE NOTICE 'El proveedor con ID % se elimino correctamente', ep_proveedor_id;
  ELSE
     RAISE NOTICE 'El proveedor con ID: % no existe', ep_proveedor_id;
  END IF;
EXCEPTION
  WHEN foreign_key_violation THEN
     RAISE NOTICE 'El proveedor tiene relacion con otras tablas';
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL eliminar_proveedor (2);

--EJERCICIO 33
CREATE OR REPLACE PROCEDURE eliminar_producto_0 ()
LANGUAGE plpgsql
AS $$
DECLARE 
  cantidad_eliminados INT;
BEGIN
  DELETE FROM inventario 
  WHERE cantidad = 10
  RETURNING 1 INTO cantidad_eliminados;

  IF FOUND THEN
    RAISE NOTICE 'El producto se elimino correctamente';
  ELSE
    RAISE NOTICE 'No se puede eliminar el producto porque tiene cantidad disponible';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;
CALL eliminar_producto_0();

--EJERCICIO 34
CREATE OR REPLACE PROCEDURE eliminar_producto_categoria (
  IN epc_categoria_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
  DELETE FROM productos WHERE categoria_id = epc_categoria_id;

  IF FOUND THEN 
    RAISE NOTICE 'Se elimaron los productos existosamente';
  ELSE 
    RAISE NOTICE 'No se pudo elimar el producto';
  END IF;
EXCEPTION 
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR % %', SQLERRM, SQLSTATE;
END;
$$;

CALL eliminar_producto_categoria(1);

--EJERCICIO 35
CREATE OR REPLACE PROCEDURE eliminar_productos_no_vendidos ()
  LANGUAGE plpgsql
  AS $$
  DECLARE 
    productos_eliminados INT;
  BEGIN 
    DELETE FROM productos WHERE producto_id NOT IN (
       SELECT DISTINCT dv.producto_id
	   FROM detalle_venta dv
	   JOIN ventas v 
	   ON v_venta_id = dv_venta_id
	   WHERE v.fecha_venta >= CURRENT_DATE - INTERVAL '12 months'
	)
	RETURNING 1 INTO productos_eliminados;

	IF FOUND THEN
	   RAISE NOTICE 'Se eliminaron productos no vendidos en el ultimo año';
	ELSE 
	   RAISE NOTICE 'Todos los productos han sido vendidos en el ultimo año';
	END IF;

   EXCEPTION
       WHEN OTHERS THEN 
	       RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
  END;
  $$;

  CALL eliminar_productos_no_vendidos();

--EJERCICIO 36
CREATE OR REPLACE PROCEDURE productos_disponibles()
LANGUAGE plpgsql
AS $$
DECLARE 
  prod RECORD;
  Hay_productos BOOLEAN := FALSE;
BEGIN
  FOR  prod IN 
     SELECT p.nombre AS productos, i.cantidad
     FROM inventario i
     JOIN productos p
     ON i.producto_id = p.producto_id
     WHERE i.cantidad > 0
     ORDER BY i.cantidad DESC
  LOOP
     RAISE NOTICE 'producto: %,  cantidad: %', prod.productos, prod.cantidad;
	 Hay_productos := TRUE;
  END LOOP;

  IF hay_productos THEN 
    RAISE NOTICE 'La consulta se ejecutó exitosamente.';
  ELSE 
    RAISE NOTICE ' No hay productos disponibles.';
  END IF;
  
EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL productos_disponibles();

-- EJERCICIO 37
CREATE OR REPLACE PROCEDURE productos_nombre (
   IN nombre_busqueda VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE 
  prod RECORD;
BEGIN 
  FOR prod IN 
     SELECT nombre AS producto, descripcion, precio
	 FROM productos
	 WHERE nombre = nombre_busqueda
  LOOP 
     RAISE NOTICE 'Producto: %, descripcion: %, precio: %', nombre_busqueda, prod.descripcion, prod.precio;
  END LOOP;

  IF FOUND THEN 
     RAISE NOTICE 'Se encontro el producto';
  ELSE 
     RAISE NOTICE 'No se encontro el producto';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;
CALL productos_nombre ('Zapatillas Deportivas');

SELECT * FROM productos;

--EJERCICIO 38
CREATE OR REPLACE PROCEDURE ventas_fechas (
  IN vf_fecha_venta DATE
)
LANGUAGE plpgsql
AS $$
DECLARE 
  fech RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR fech IN
     SELECT p.nombre AS producto, dv.cantidad, dv.precio_unitario, v.total, v.fecha_venta 
	 FROM detalle_venta dv
	 JOIN ventas v ON dv.venta_id = v.venta_id
	 JOIN productos p ON dv.producto_id = p.producto_id
	 WHERE v.fecha_venta = vf_fecha_venta
  LOOP 
	 RAISE NOTICE 'Producto: %, cantidad: %, precio unitario: %, total %, fecha_venta %',
	 fech.producto, fech.cantidad, fech.precio_unitario, fech.total, fech.fecha_venta;
     encontro := TRUE; 
  END LOOP;
  IF encontro THEN
	 RAISE NOTICE 'Consulta exitosa';
	 ELSE 
	 RAISE NOTICE 'La fecha % no fue encontrada', vf_fecha_venta;
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQlSTATE;
END;
$$;

CALL ventas_fechas('2025-04-10');
SELECT * FROM ventas;

--EJERCICIO 39
CREATE OR REPLACE PROCEDURE datos_cliente (
  IN dc_cliente_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE 
  cli RECORD;
  encontrado BOOLEAN := FALSE;
BEGIN
  FOR cli IN 
    SELECT nombre, apellido, correo, telefono FROM clientes
	WHERE cliente_id = dc_cliente_id
  LOOP
    RAISE NOTICE 'Nombre: %, apellido: %, correo: %, telefono: %',
	cli.nombre, cli.apellido, cli.correo, cli.telefono;
	encontrado := TRUE;
  END LOOP;
  IF encontrado THEN 
    RAISE NOTICE 'Se encontro el cliente';
  ELSE 
    RAISE NOTICE 'No se encontro el cliente';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL datos_cliente (11);

--EJERCICIO 40
CREATE OR REPLACE PROCEDURE datos_detalles_ventas (
  IN ddv_venta_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE
  ven RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR ven IN
     SELECT p.nombre AS productos,
	        dt.cantidad
	 FROM detalle_venta dt
	 JOIN productos p ON dt.producto_id = p.producto_id
	 JOIN ventas v ON dt.venta_id = v.venta_id
	 WHERE v.venta_id = ddv_venta_id
  LOOP 
     RAISE NOTICE 'Productos: %, cantidad: %', ven.productos, ven.cantidad;
	 encontro := TRUE;
  END LOOP;
  IF encontro THEN 
     RAISE NOTICE 'Se encontro el producto';
  ELSE
     RAISE NOTICE 'No se encontro el producto';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL datos_detalles_ventas(12);

--EJERCICIO 41
CREATE OR REPLACE PROCEDURE compras_clientes (
  IN cc_cliente_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE
  ven RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR ven IN
    SELECT cl.nombre AS clientes,
	       v.total,
		   v.fecha_venta
	FROM clientes cl
	JOIN ventas v 
	ON cl.cliente_id = v.cliente_id
	WHERE cl.cliente_id = cc_cliente_id
	
  LOOP
    RAISE NOTICE 'Cliente: %, total: %, fecha: %', ven.clientes, ven.total, ven.fecha_venta;
	encontro := TRUE;
  END LOOP;
  IF encontro THEN
    RAISE NOTICE 'se encontro el cliente con todas sus ventas';
  ELSE
    RAISE NOTICE 'No se encontro el cliente';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL compras_clientes (10);

--EJERCICIO 42
CREATE OR REPLACE PROCEDURE productos_por_categoria (
  IN ppc_categoria_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE
  pro RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR pro IN 
    SELECT c.nombre_categoria,
	       pr.nombre AS productos
    FROM productos pr
	JOIN categorias c
	ON pr.categoria_id = c.categoria_id
	WHERE c.categoria_id = ppc_categoria_id
  LOOP 
    RAISE NOTICE 'Categoria: %, productos: %', pro.nombre_categoria, pro.productos;
	encontro := TRUE;
  END LOOP;
  IF encontro THEN
    RAISE NOTICE 'Se encontraron los productos en la categoria';
  ELSE 
    RAISE NOTICE 'No se encontro producto en la categoria';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL productos_por_categoria(1);

--EJERCICIO 43
CREATE OR REPLACE PROCEDURE productos_por_proveedor (
  IN ppp_proveedor_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE 
  pro RECORD;
  encontro BOOLEAN := FALSE;
BEGIN 
  FOR pro IN 
    SELECT pr.nombre AS productos,
	       pv.nombre_proveedor
	FROM proveedores pv
	JOIN productos pr
	ON pv.proveedor_id = pr.proveedor_id
	WHERE pv.proveedor_id = ppp_proveedor_id
  LOOP 
    RAISE NOTICE 'Producto: %, Proveedor: %', pro.productos, pro.nombre_proveedor;
	encontro := TRUE;
  END LOOP;
  IF encontro THEN
    RAISE NOTICE 'Producto del proveedor encontrado';
  ELSE
    RAISE NOTICE 'No se encontro el proveedor';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL productos_por_proveedor(1);

--EJERICICO 44
CREATE OR REPLACE PROCEDURE total_vendido_productos (
  IN tp_producto_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE 
  total_vendido INT := 0;
BEGIN
  SELECT COALESCE(SUM(cantidad), 0) 
  INTO total_vendido
  FROM detalle_venta 
  WHERE producto_id = tp_producto_id;

  IF total_vendido > 0 THEN
    RAISE NOTICE 'Total de unidades vendidas del producto %: %', tp_producto_id, total_vendido;
  ELSE
    RAISE NOTICE 'El producto con ID % no ha sido vendido.', tp_producto_id;
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % (%).', SQLERRM, SQLSTATE;
END;
$$;

CALL total_vendido_productos(3);

--EJERCICIO 45
CREATE OR REPLACE PROCEDURE pocas_unidades ()
LANGUAGE plpgsql
AS $$
DECLARE 
  uni RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR uni IN
    SELECT p.nombre AS productos,
	       i.cantidad
	FROM inventario i
	JOIN productos p
	ON  i.producto_id = p.producto_id
	WHERE i.cantidad >= 5
	ORDER BY i.cantidad DESC
  LOOP 
    RAISE NOTICE 'Producto: % , cantidad: %', uni.productos, uni.cantidad;
	encontro := TRUE;
  END LOOP;
  IF encontro THEN
    RAISE NOTICE 'El producto se encontro';
  ELSE 
    RAISE NOTICE 'El producto no se encontro';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL pocas_unidades ();

--EJERCICIO 46
CREATE OR REPLACE PROCEDURE promedio_categoria()
LANGUAGE plpgsql
AS $$
DECLARE 
  registro RECORD;
  encontro BOOLEAN := FALSE;  
BEGIN 
  FOR registro IN
     SELECT c.nombre_categoria AS categoria, 
	        ROUND (COALESCE(AVG(p.precio), 0.00), 2) AS promedio
     FROM productos p
	 JOIN categorias c
	 ON p.categoria_id = c.categoria_id
	 GROUP BY c.nombre_categoria
  LOOP 
     RAISE NOTICE 'Categoria: %, Promedio: %', registro.categoria, registro.promedio;
	 encontro := TRUE;
  END LOOP;  
  IF NOT encontro THEN
     RAISE NOTICE 'No se encontro la categoria';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
      RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL promedio_categoria ();

-- EJERCICIO 47
CREATE OR REPLACE PROCEDURE total_gastado (
  IN tg_cliente_id INT
) 
LANGUAGE plpgsql
AS $$
DECLARE 
  gas RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR gas IN
    SELECT c.nombre AS clientes,
	COALESCE (SUM(p.monto), 0) AS total_gastado
	FROM clientes c
	JOIN pagos p
	ON c.cliente_id = p.cliente_id
	GROUP BY c.nombre
  LOOP 
    RAISE NOTICE 'Cliente: %, total pagado: %', gas.clientes, gas.total_gastado;
	encontro := TRUE;
  END LOOP;
  IF encontro THEN
    RAISE NOTICE 'El cliente se encontro';
  ELSE 
    RAISE NOTICE 'El cliente no se encontro';
  END IF;
EXCEPTION 
  WHEN OTHERS THEN 
    RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL total_gastado(1);

--EJERCICIO 48
CREATE OR REPLACE PROCEDURE clientes_frecuentes()
LANGUAGE plpgsql
AS $$
DECLARE 
  frecuencia RECORD;
  encontro BOOLEAN := FALSE;
BEGIN 
  FOR frecuencia IN
    WITH cliente_compras AS (
        SELECT cl.nombre AS clientes,
		COALESCE(COUNT(v.cliente_id),0) AS total_compras
	    FROM clientes cl
		JOIN ventas v
		ON cl.cliente_id = v.cliente_id
		GROUP BY cl.nombre
)
  SELECT clientes, total_compras
  FROM cliente_compras 
  WHERE total_compras >= 3
  ORDER BY total_compras DESC
  LOOP 
     RAISE NOTICE 'Cliente: %, total_compras: %', frecuencia.clientes, frecuencia.total_compras;
	 encontro := TRUE;
  END LOOP;
  IF NOT encontro THEN
     RAISE NOTICE 'No se encontraron clientes con mas de 3 compras';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
     RAISE NOTICE 'ERROR: % %', SQlERRM, SQlSTATE;
END;
$$;

CALL clientes_frecuentes();

-- EJERCICIO 49
CREATE OR REPLACE PROCEDURE productos_vendidos ()
LANGUAGE plpgsql
AS $$
DECLARE
   pro RECORD;
   encontro BOOLEAN := FALSE;
BEGIN
  FOR pro IN 
     WITH mas_ventas AS (
        SELECT pr.nombre AS productos,
		       COALESCE(COUNT(dll.cantidad),0) AS cantidad
		FROM productos pr
		JOIN detalle_venta dll
		ON dll.producto_id = pr.producto_id
		GROUP BY pr.nombre
	 )
	 SELECT productos,
	        cantidad,
	        DENSE_RANK()OVER(ORDER BY cantidad DESC) AS ranking
	 FROM mas_ventas
	 WHERE cantidad > 0
	 LOOP 
	     RAISE NOTICE 'Producto: %, cantidad: %, ranking: %', pro.productos, pro.cantidad, pro.ranking;
		 encontro := TRUE;
	 END LOOP;
  IF NOT encontro THEN
     RAISE NOTICE 'No hay productos vendidos';
  END IF;
EXCEPTION
  WHEN OTHERS THEN 
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL productos_vendidos ();

--EJERCICIO 50
CREATE OR REPLACE PROCEDURE historial_compras (
  IN hc_cliente_id INT,
  IN fecha_inicio DATE,
  IN fecha_fin DATE
)
LANGUAGE plpgsql
AS $$
DECLARE 
  his RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR his IN
    WITH compra_fecha AS (
        SELECT cl.cliente_id,
		       cl.nombre AS clientes,
		       v.fecha_venta,
			   v.total
		FROM clientes cl
		JOIN ventas v
		ON cl.cliente_id = v.cliente_id
	)
	SELECT clientes, fecha_venta, total
	FROM compra_fecha
	WHERE fecha_venta >= fecha_inicio AND fecha_venta <= fecha_fin AND cliente_id = hc_cliente_id

	LOOP 
	  RAISE NOTICE 'Cliente: %, fecha_venta: %, total: %', his.clientes, his.fecha_venta, his.total;
	  encontro := TRUE;
	END LOOP;
	IF NOT encontro THEN
	   RAISE NOTICE 'No se encontraron ventas';
	END IF;
EXCEPTION 
  WHEN OTHERS THEN
    RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL historial_compras (1, '2025-02-01', '2025-02-03');

--EJERCICIO 51
CREATE OR REPLACE PROCEDURE ventas_fecha (
  IN vf_fecha_inicio DATE,
  IN vf_fecha_fin DATE
)
LANGUAGE plpgsql
AS $$
DECLARE 
  fec RECORD;
  encontro BOOLEAN := FALSE;
BEGIN 
  FOR fec IN 
     SELECT SUM(total) AS total_vendido
	 FROM ventas
	 WHERE fecha_venta >= vf_fecha_inicio AND fecha_venta <= vf_fecha_fin
  LOOP 
      RAISE NOTICE 'Total: %', fec.total_vendido;
	  encontro := TRUE;
  END LOOP;
  IF NOT encontro THEN
      RAISE NOTICE 'No se encontraron ventas en las fechas dadas';
  END IF;
EXCEPTION
  WHEN OTHERS THEN
      RAISE NOTICE 'ERROR: % %', SQLSTATE, SQLERRM;
END;
$$;

CALL ventas_fecha ('2025-03-10', CURRENT_DATE);

--EJERCICIO 52
CREATE OR REPLACE PROCEDURE productos_no_vendidos ()
LANGUAGE plpgsql
AS $$
DECLARE 
  no_ven RECORD;
  encontro BOOLEAN := FALSE;
BEGIN
  FOR no_ven IN 
      SELECT pr.nombre AS productos,
	         dll.detalle_id AS ventas
	  FROM productos pr
	  LEFT JOIN detalle_venta dll
	  ON pr.producto_id = dll.producto_id
	  WHERE dll.detalle_id IS NULL
  LOOP 
     RAISE NOTICE 'Producto: % ', no_ven.productos;
	 encontro := TRUE;
  END LOOP;
  IF NOT encontro THEN 
     RAISE NOTICE 'Todos los productos se han vendido';
  END IF;
EXCEPTION 
  WHEN OTHERS THEN
     RAISE NOTICE 'ERROR: % %', SQLERRM, SQLSTATE;
END;
$$;

CALL productos_no_vendidos ();

