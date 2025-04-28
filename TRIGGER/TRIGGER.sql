-- TABLAS 
CREATE TABLE productos (
   producto_id SERIAL PRIMARY KEY,
   nombre VARCHAR (100) NOT NULL,
   precio NUMERIC (10, 2) NOT NULL,
   cantidad INT,
   categoria VARCHAR (50)
);

CREATE TABLE clientes (
  cliente_id SERIAL PRIMARY KEY,
  nombre_cliente VARCHAR (100),
  correo VARCHAR (50) UNIQUE,
  telefono VARCHAR (15) UNIQUE,
  direccion VARCHAR (20) NOT NULL
);

CREATE TABLE empleados (
  empleado_id SERIAL PRIMARY KEY,
  nombre VARCHAR (50),
  especialidad VARCHAR (50),
  fecha_ingreso DATE DEFAULT CURRENT_DATE
);

CREATE TABLE ventas (
  venta_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  fecha_venta DATE DEFAULT CURRENT_DATE,
  total NUMERIC (10, 2)
);

CREATE TABLE detalles_ventas (
  detalle_id SERIAL PRIMARY KEY,
  venta_id INT REFERENCES ventas (venta_id),
  producto_id INT REFERENCES productos (producto_id),
  cantidad INT NOT NULL,
  precio_unitario NUMERIC (10, 2)
);

CREATE TABLE pedidos (
  pedido_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  fecha_pedido DATE,
  estado VARCHAR (100) --Pendiente, enviado, entregado
);

CREATE TABLE auditoria_productos (
   auditoria_id SERIAL PRIMARY KEY,
   producto_id INT REFERENCES productos (producto_id),
   precio_anterior NUMERIC (10, 2) NOT NULL,
   precio_nuevo NUMERIC (10, 2) NOT NULL,
   fecha_cambio DATE DEFAULT CURRENT_DATE
);

CREATE TABLE registro_ventas (
  registro_id SERIAL PRIMARY KEY,
  venta_id INT REFERENCES ventas (venta_id),
  fecha_venta DATE
);

CREATE TABLE clientes_eliminados (
  eliminado_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  nombre_cliente VARCHAR (100),
  correo VARCHAR (50) UNIQUE,
  telefono VARCHAR (15) UNIQUE,
  direccion VARCHAR (20) NOT NULL,
  fecha_eliminacion DATE DEFAULT CURRENT_DATE
);

CREATE TABLE historial_pedidos (
  historial_id SERIAL PRIMARY KEY,
  pedido_id INT REFERENCES pedidos (pedido_id),
  fecha_pedido DATE,
  estado VARCHAR,
  estado_nuevo VARCHAR
);

CREATE TABLE historial_cantidad (
  historial_id SERIAL PRIMARY KEY,
  producto_id INT REFERENCES productos (producto_id),
  cantidad_anterior INT,
  cantidad_nueva INT,
  fecha DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Bienvenida (
  Bienvenida_id SERIAL PRIMARY KEY,
  cliente_id INT REFERENCES clientes (cliente_id),
  nombre VARCHAR (50),
  fecha_registro DATE DEFAULT CURRENT_DATE,
  mensaje TEXT
);

CREATE TABLE descuentos (
  descuento_id SERIAL PRIMARY KEY,
  detalle_id INT REFERENCES detalles_ventas (detalle_id),
  descuento INT DEFAULT 5
);

CREATE TABLE ventas_importantes (
 importante_id SERIAL PRIMARY KEY,
 venta_id INT REFERENCES ventas (venta_id),
 fecha_venta DATE DEFAULT CURRENT_DATE,
 monto NUMERIC (10, 2) NOT NULL
);

CREATE TABLE cambios_especialidad_empleados (
  especialidad_id SERIAL PRIMARY KEY,
  empleado_id INT REFERENCES empleados (empleado_id),
  especialidad_antigua VARCHAR (50),
  especialidad_nueva VARCHAR (50)
);

CREATE TABLE alertas_stock (
  alerta_id SERIAL PRIMARY KEY,
  mensaje VARCHAR (50) DEFAULT 'Menos de 5 unidades',
  fecha_alerta DATE DEFAULT CURRENT_DATE
);

CREATE TABLE auditoria_movimientos (
   id_auditoria SERIAL PRIMARY KEY,
   tabla_afectada TEXT NOT NULL,
   operacion TEXT NOT NULL,
   descripcion_cambio TEXT,
   usuario_modifico TEXT,
   fecha_modificacion TIMESTAMP DEFAULT NOW()
);

-- DATOS PRODUCTOS
INSERT INTO productos (nombre, precio, cantidad, categoria) VALUES
('Laptop Lenovo ThinkPad', 2500.00, 15, 'Tecnología'),
('Camiseta Nike', 85.00, 50, 'Ropa'),
('Smartphone Samsung A54', 1850.00, 25, 'Tecnología'),
('Silla ergonómica', 520.00, 30, 'Oficina'),
('Zapatillas Adidas', 120.00, 40, 'Calzado'),
('Mouse inalámbrico', 45.00, 100, 'Accesorios'),
('Monitor LG 24"', 780.00, 20, 'Tecnología'),
('Escritorio madera', 1150.00, 10, 'Muebles'),
('Audífonos Sony', 220.00, 35, 'Accesorios'),
('Maleta deportiva', 150.00, 60, 'Deportes');

-- DATOS CLIENTES
INSERT INTO clientes (nombre_cliente, correo, telefono, direccion) VALUES
('Laura Martínez', 'laura.martinez@gmail.com', '3001234567', 'Cra 10 #23-45'),
('Carlos Gómez', 'carlos.gomez@yahoo.com', '3109876543', 'Cll 5 #12-34'),
('Andrea Torres', 'andrea.torres@outlook.com', '3204567890', 'Av 7 #14-22'),
('Juan Herrera', 'juan.herrera@gmail.com', '3007654321', 'Cra 45 #10-20'),
('María López', 'maria.lopez@hotmail.com', '3112345678', 'Cll 80 #25-10'),
('Diego Rojas', 'diego.rojas@empresa.com', '3123456789', 'Av 68 #55-44'),
('Camila Pérez', 'camila.perez@gmail.com', '3134567890', 'Cra 7 #30-15'),
('Sofía Vargas', 'sofia.vargas@yahoo.com', '3149876543', 'Cll 100 #12-21'),
('Julián Sánchez', 'julian.sanchez@hotmail.com', '3151234567', 'Cll 90 #44-32'),
('Valentina Ruiz', 'valentina.ruiz@outlook.com', '3162345678', 'Cra 12 #8-19');

-- DATOS VENTAS
INSERT INTO ventas (cliente_id, fecha_venta, total) VALUES
(1, '2025-04-01', 320.50),
(2, '2025-04-02', 150.00),
(3, '2025-04-03', 450.75),
(4, '2025-04-04', 299.99),
(5, '2025-04-05', 199.90),
(6, '2025-04-06', 520.00),
(7, '2025-04-07', 89.95),
(8, '2025-04-08', 345.60),
(9, '2025-04-09', 410.25),
(10, '2025-04-10', 260.00);

-- DATOS DETALLES VENTAS
INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario) VALUES
(1, 2, 2, 85.00),
(2, 4, 1, 520.00),
(3, 1, 1, 2500.00),
(4, 5, 2, 120.00),
(5, 3, 1, 1850.00),
(6, 6, 3, 45.00),
(7, 7, 1, 780.00),
(8, 9, 2, 220.00),
(9, 10, 1, 150.00),
(10, 8, 1, 1150.00);

-- DATOS EMPLEADOS
INSERT INTO empleados (nombre, especialidad, fecha_ingreso) VALUES
('Andrés García', 'Ventas', '2023-01-15'),
('María Fernández', 'Atención al cliente', '2022-11-20'),
('Carlos Ruiz', 'Logística', '2021-06-30'),
('Laura Mendoza', 'Marketing', '2024-02-05'),
('Felipe Torres', 'Ventas', '2023-09-12'),
('Camila Sánchez', 'Atención al cliente', '2022-04-18'),
('Daniel Herrera', 'Logística', '2021-12-22'),
('Sara Gómez', 'Marketing', '2023-07-10'),
('Julián Castro', 'Ventas', '2024-01-08'),
('Paula Rojas', 'Atención al cliente', '2022-08-14');

-- DATOS PEDIDOS
INSERT INTO pedidos (cliente_id, fecha_pedido, estado) VALUES
(1, '2025-04-01', 'Pendiente'),
(2, '2025-04-02', 'Enviado'),
(3, '2025-04-03', 'Entregado'),
(4, '2025-04-04', 'Pendiente'),
(5, '2025-04-05', 'Enviado'),
(6, '2025-04-06', 'Entregado'),
(7, '2025-04-07', 'Pendiente'),
(8, '2025-04-08', 'Enviado'),
(9, '2025-04-09', 'Entregado'),
(10, '2025-04-10', 'Pendiente');

--EJERCICIO 1
CREATE OR REPLACE FUNCTION TR_auditoria_precios ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO auditoria_productos(producto_id, precio_anterior, precio_nuevo, fecha_cambio)
  VALUES (OLD.producto_id, OLD.precio, NEW.precio, CURRENT_DATE);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_cambio_precio
AFTER UPDATE ON productos
FOR EACH ROW
WHEN (OLD.precio <> NEW.precio)
EXECUTE FUNCTION TR_auditoria_precios ();

BEGIN;
  UPDATE productos SET precio = 3000.00
  WHERE producto_id = 1;
  SELECT * FROM auditoria_productos;
COMMIT;

--EJERCICIO 2
CREATE OR REPLACE FUNCTION impide_stock_0 ()
RETURNS TRIGGER
AS $$
BEGIN 
  IF NEW.cantidad < 0 THEN
     RAISE EXCEPTION 'El producto no puede quedar con una cantidad negativa. Valor proporcionado: %', NEW.cantidad;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER TR_stock_0
BEFORE UPDATE ON productos
FOR EACH ROW
EXECUTE FUNCTION impide_stock_0 ();

BEGIN;
  UPDATE productos SET cantidad = 10
  WHERE producto_id = 1;

  SELECT * FROM productos;
COMMIT;
ROLLBACK;

-- EJERCICIO 3
CREATE OR REPLACE FUNCTION TR_nueva_venta ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO registro_ventas (venta_id, fecha_venta)
  VALUES (NEW.venta_id, CURRENT_DATE);

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_nueva_venta
  AFTER INSERT ON ventas
  FOR EACH ROW
  EXECUTE FUNCTION TR_nueva_venta();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 400.00);

  SELECT * FROM registro_ventas;
COMMIT;

--EJERCICIO 4
CREATE OR REPlACE FUNCTION historial_eliminaciones ()
RETURNS TRIGGER
AS $$ 
BEGIN 
  INSERT INTO clientes_eliminados (cliente_id, nombre_cliente, correo, telefono, direccion)
  VALUES (OLD.cliente_id, OLD.nombre_cliente, OLD.correo, OLD.telefono, OLD.direccion);
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_historial_eliminaciones 
BEFORE DELETE ON clientes
FOR EACH ROW
EXECUTE FUNCTION historial_eliminaciones ();

BEGIN;
  DELETE FROM clientes WHERE cliente_id = 2;
  SELECT * FROM clientes_eliminados;
COMMIT;

-- EJERCICIO 5
CREATE OR REPLACE FUNCTION cambios_estado ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO historial_pedidos (pedido_id, fecha_pedido, estado, estado_nuevo)
  VALUES (OLD.pedido_id, CURRENT_DATE, OLD.estado, NEW.estado);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER TR_historial_pedidos
BEFORE UPDATE ON pedidos
FOR EACH ROW
WHEN (OLD.estado IS DISTINCT FROM NEW.estado)
EXECUTE FUNCTION cambios_estado();

BEGIN;
  UPDATE pedidos SET estado = 'Entregado'
  WHERE pedido_id = 1;

  UPDATE pedidos SET estado = 'Enviado'
  WHERE pedido_id = 2;

  SELECT * FROM historial_pedidos;
COMMIT;

-- EJERCICIO 6
CREATE OR REPLACE FUNCTION auditar_cambios ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO historial_cantidad (producto_id, cantidad_anterior, cantidad_nueva, fecha)
  VALUES (OLD.producto_id, OLD.cantidad, NEW.cantidad, CURRENT_DATE);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_auditar_cambios
BEFORE UPDATE ON productos
FOR EACH ROW
  EXECUTE FUNCTION auditar_cambios ();

BEGIN;
  UPDATE productos SET cantidad = 400
  WHERE producto_id = 1;

  SELECT * FROM historial_cantidad;
COMMIT;

-- EJERCICIO 7
CREATE OR REPLACE FUNCTION cantidad_suficiente ()
RETURNS TRIGGER
AS $$
DECLARE 
  cantidad_actual INT;
BEGIN 
  SELECT cantidad INTO cantidad_actual
  FROM productos 
  WHERE producto_id = NEW.producto_id;

  IF cantidad_actual IS NULL THEN
     RAISE EXCEPTION 'No se encontro el producto con ID: %', NEW.producto_id;
  ELSIF cantidad_actual < NEW.cantidad THEN
     RAISE EXCEPTION 'Cantidad insuficiente para el producto con ID: % solo hay cantidad actual: %', NEW.producto_id, cantidad_actual;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_cantidad_suficiente
BEFORE INSERT ON detalles_ventas
FOR EACH ROW
EXECUTE FUNCTION cantidad_suficiente ();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 120000.00);
  
  INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario)
  VALUES (12, 2, 4000, 300.00);

  SELECT * FROM detalles_ventas;
  SELECT * FROM ventas;
COMMIT;
ROLLBACK;

-- EJERCICIO 8
CREATE OR REPLACE FUNCTION bienvenido_cliente ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO Bienvenida (cliente_id, nombre, fecha_registro)
  VALUES (NEW.cliente_id, NEW.nombre_cliente, CURRENT_DATE);

  RAISE NOTICE 'Bienvenido a nuestra tienda %', NEW.nombre_cliente;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_bienvenido_cliente
AFTER INSERT ON clientes
FOR EACH ROW
EXECUTE FUNCTION bienvenido_cliente ();

BEGIN;
  INSERT INTO clientes (nombre_cliente, correo, telefono, direccion)
  VALUES ('Camilo', 'Camilo@gmail.com', '3225656098', 'Cll-robleddo');

  SELECT * FROM Bienvenida;
COMMIT;

-- EJERCICIO 9
CREATE OR REPLACE FUNCTION automatico_precio ()
RETURNS TRIGGER
AS $$
DECLARE 
  total_nuevo NUMERIC := 0.00;
BEGIN
   SELECT SUM(cantidad * precio_unitario)
          INTO total_nuevo
   FROM detalles_ventas
   WHERE venta_id = NEW.venta_id;

   UPDATE ventas 
   SET total = total_nuevo
   WHERE venta_id = NEW.venta_id;

   RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_automatico_precio
AFTER INSERT ON detalles_ventas
FOR EACH ROW
  EXECUTE FUNCTION automatico_precio ();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1,  CURRENT_DATE, 400.00);

  INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario)
  VALUES (11, 2, 5, 2000.00);
COMMIT;

-- EJERCICIO 10
CREATE OR REPLACE FUNCTION pedidos_cancelados ()
RETURNS TRIGGER
AS $$
BEGIN
  IF OLD.estado = 'cancelado' THEN
     RAISE EXCEPTION 'El pedido esta en estado cancelado, no se puede modificar';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_pedidos_cancelados
BEFORE UPDATE ON pedidos
FOR EACH ROW
EXECUTE FUNCTION pedidos_cancelados ();

BEGIN;
  INSERT INTO pedidos (cliente_id, fecha_pedido, estado)
  VALUES (3, CURRENT_DATE, 'cancelado');

  UPDATE pedidos SET estado = 'enviado'
  WHERE pedido_id = 12;
ROLLBACK;

--EJERCICIO 11
CREATE OR REPLACE FUNCTION control_descuento ()
RETURNS TRIGGER
AS $$
BEGIN
  IF NEW.descuento > 50 THEN
     RAISE EXCEPTION 'ERROR: No se permite un descuento del 50 porciento';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_control_descuento
BEFORE INSERT ON detalles_ventas
FOR EACH ROW
EXECUTE FUNCTION control_descuento ();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (10, CURRENT_DATE, 0.00);
  
  INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario, descuento)
  VALUES (23, 3, 2, 100.00, 49);
COMMIT;

-- EJERCICIO 12
CREATE OR REPLACE FUNCTION cantidad_automatica()
RETURNS TRIGGER
AS $$
BEGIN 
  UPDATE productos 
  SET cantidad = cantidad - NEW.cantidad
  WHERE producto_id = NEW.producto_id;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_cantidad_automatica
AFTER INSERT ON detalles_ventas
FOR EACH ROW
EXECUTE FUNCTION cantidad_automatica();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 0.00);
  
  INSERT INTO detalles_ventas(venta_id, producto_id, cantidad, precio_unitario, descuento)
  VALUES (35, 3, 5, 200, 30);
COMMIT;
ROLLBACK;

-- EJERCICIO 13
CREATE OR REPLACE FUNCTION cliente_eliminado ()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO clientes_eliminados (cliente_id, nombre_cliente, correo, telefono, direccion, fecha_eliminacion)
  VALUES (NEW.cliente_id, NEW.nombre_cliente, NEW.correo, NEW.telefono, NEW.direccion, CURRENT_DATE);

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_cliente_eliminado 
BEFORE DELETE ON clientes
FOR EACH ROW
EXECUTE FUNCTION cliente_eliminado();

-- EJERCICIO 14
CREATE OR REPLACE FUNCTION edad_mayor ()
RETURNS TRIGGER
AS $$
BEGIN
  IF NEW.edad < 18 THEN
     RAISE EXCEPTION 'El cliente es menor de edad deberia tener mas de 18 años';
  END IF;
  RETURN EXIT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_edad_mayor
BEFORE INSERT ON clientes
FOR EACH ROW
   EXECUTE FUNCTION edad_mayor();
   
BEGIN;
  INSERT INTO clientes (nombre_cliente, correo, telefono, direccion, edad)
  VALUES ('Santiago', 'Santiago@gmail.com', '3333333333', 'cll galapa', 12);
ROLLBACK;

-- EJERCICIO 15
CREATE OR REPLACE FUNCTION backup ()
RETURNS TRIGGER
AS $$
BEGIN
  IF NEW.total > 10000.00 THEN
     INSERT INTO ventas_importantes (venta_id, fecha_venta, monto) 
	 VALUES (NEW.venta_id, CURRENT_DATE, NEW.total);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_backup
AFTER INSERT ON ventas
FOR EACH ROW
EXECUTE FUNCTION backup ();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 20000.00);

  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 2000.00);
COMMIT;

-- EJERCICIO 16
CREATE OR REPLACE FUNCTION sincronizacion_productos ()
RETURNS TRIGGER
AS $$
BEGIN
  UPDATE detalles_ventas SET precio_unitario = NEW.precio
  WHERE detalle_id = detalle_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_sincronizacion_productos 
AFTER UPDATE ON productos
FOR EACH ROW
EXECUTE FUNCTION sincronizacion_productos ();

BEGIN;
     UPDATE productos SET precio = 20.00
	 WHERE producto_id = 2;

	 SELECT * FROM detalles_ventas WHERE producto_id = 2;
	 SELECT * FROM productos;
COMMIT;

-- EJERCICIO 17
CREATE OR REPLACE FUNCTION cambio_especialidad()
RETURNS TRIGGER
AS $$
BEGIN
  INSERT INTO cambios_especialidad_empleados (empleado_id, especialidad_antigua, especialidad_nueva)
  VALUES (NEW.empleado_id, OLD.especialidad, NEW.especialidad);

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_cambio_especialidad
BEFORE UPDATE ON empleados
FOR EACH ROW 
EXECUTE FUNCTION cambio_especialidad();

BEGIN;
  UPDATE empleados SET especialidad = 'Logística'
  WHERE empleado_id = 1;

  SELECT * FROM cambios_especialidad_empleados;
COMMIT;

-- EJERCICIO 18
CREATE OR REPLACE FUNCTION devolucion_cantidad ()
RETURNS TRIGGER
AS $$
BEGIN
  UPDATE productos 
  SET cantidad = cantidad + OLD.cantidad
  WHERE producto_id = OLD.producto_id;

  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_devolucion_cantidad
AFTER DELETE ON detalles_ventas
FOR EACH ROW
EXECUTE FUNCTION devolucion_cantidad ();

BEGIN;
  DELETE FROM detalles_ventas 
  WHERE detalle_id = 2;

  SELECT * FROM productos;
COMMIT;

-- EJERCICIO 19
CREATE OR REPLACE FUNCTION cantidad_minima()
RETURNS TRIGGER 
AS $$
DECLARE
  cantidad_actual INT;
BEGIN
  SELECT cantidad 
         INTO cantidad_actual
  FROM productos
  WHERE producto_id = NEW.producto_id;
  
  IF cantidad_actual < 5 THEN
     INSERT INTO alertas_stock (mensaje,fecha_alerta)
	 VALUES ('Menos de 5 unidades', CURRENT_DATE);
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_cantidad_minima
AFTER INSERT ON detalles_ventas
FOR EACH ROW
EXECUTE FUNCTION cantidad_minima ();

BEGIN;
  INSERT INTO ventas (cliente_id, fecha_venta, total)
  VALUES (1, CURRENT_DATE, 0.00);

  INSERT INTO detalles_ventas (venta_id, producto_id, cantidad, precio_unitario)
  VALUES (45,7,18,780.00);
COMMIT;

-- EJERCICIO 20
CREATE OR REPLACE FUNCTION auditoria_general ()
RETURNS TRIGGER
AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN 
     INSERT INTO auditoria_movimientos (tabla_afectada, operacion, descripcion_cambio, usuario_modifico)
	 VALUES ('clientes', 'INSERT', 'Se inserto un cliente', SESSION_USER);
  ELSIF TG_OP = 'UPDATE' THEN
     INSERT INTO auditoria_movimientos (tabla_afectada, operacion, descripcion_cambio, usuario_modifico)
	 VALUES ('clientes', 'UPDATE', 'Se modifico un cliente', SESSION_USER);
  ELSIF TG_OP = 'DELETE' THEN
     INSERT INTO auditoria_movimientos (tabla_afectada, operacion, descripcion_cambio, usuario_modifico)
	 VALUES ('clientes', 'DELETE', 'Se elimino un cliente', SESSION_USER);
  END IF;
   RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER tr_auditoria_general
AFTER INSERT OR UPDATE OR DELETE ON clientes
FOR EACH ROW
  EXECUTE FUNCTION auditoria_general();

BEGIN;
  INSERT INTO clientes (nombre_cliente, correo, telefono, direccion, edad)
  VALUES('Xavi', 'Xavi@gamil.com', '332123123', 'calle-20', 19);

  UPDATE clientes SET nombre_cliente = 'Messi'
  WHERE cliente_id = 20;
COMMIT;