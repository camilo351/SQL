-- EJERCICIO 1 -- 
CREATE INDEX idx_clientes_nombre
ON clientes (nombre);

-- EJERCICIO 2 --
CREATE INDEX Idx_clientes_apellido
ON clientes (apellido);

-- EJERCICIO 3 --
CREATE INDEX idx_clientes_correo
ON clientes (correo);

-- EJERCICIO 4 --
CREATE INDEX idx_productos_precio
ON productos (precio_unitario);

-- EJERCICIO 5 --
CREATE INDEX idx_transaccion_fecha
ON transacciones (fecha_transaccion);

-- EJERCICIO 6 --
CREATE INDEX idx_departamento_salario
ON empleados (departamento, salario);

-- EJERCICIO 7 --
CREATE INDEX idx_producto_id
ON productos USING HASH (producto_id); 

--- EJERCICIO 8 ---
CREATE INDEX idx_producto_id 
ON productos USING HASH (producto_id);

--- EJERCICIO 9 ---
CREATE INDEX idx_cliente_ciudad
ON clientes USING HASH (ciudad);

---EJERCICIO 10---
CREATE INDEX idx_usuario_nombre
ON usuario USING HASH (nombre);

---EJERCICIO 11---
CREATE INDEX idx_empleado_identificacion
ON empleados USING HASH (identificacion);

---EJERCICIO 12---
CREATE INDEX idx_clientes_correo
ON clientes USING HASH (correo);

---EJERCICIO 13---
CREATE INDEX idx_cuentas_id_cuenta
ON cuentas USING HASH (id_cuenta);

---EJERCICIO 14---
CREATE INDEX idx_producto_codigo
ON productos USING HASH (codigo);

---EJERCICIO 15---
CREATE INDEX idx_pedidos_id_transaccion
ON pedidos USING HASH (id_transaccion);

---EJERCICIO 16---
CREATE INDEX idx_vehiculos_placa
ON vehiculos USING HASH (placa);

---EJERCICIO 17---
CREATE INDEX idx_estdiantes_matricula
ON estudiantes USING HASH (matricula);

---EJERCICIO 18--
CREATE INDEX idx_proveedores_identificacion_fiscal
ON proveedores USING HASH (numero_identifeicacion_fiscal);

---EJERCICIO 19---
CREATE INDEX idx_clientes_movil_telefono
ON clientes_movil USING HASH (telefono);

--- EJERCICIO 20 ---
CREATE INDEX idx_logistica_coordenadas_geograficas
ON logistica USING GIST (coordenadas_geograficas);

--- EJERCICIO 21 ---
CREATE INDEX idx_hotel_reservas
ON hotel USING GIST (reservas);

--- EJERCICIO 22 ---
CREATE INDEX idx_e_commerce_productos
ON e_commerce USING GIN (etiquetas);

--- EJERCICIO 23 ---
CREATE INDEX idx_hospital_fecha
ON hospital USING GIST (rango);

--- EJERCICIO 24 ---
CREATE INDEX idx_app_entrega_ubicacion
ON app_entrega USING GIST (ubicacion);

--- EJERCICIO 25 ---
CREATE INDEX idx_alquiler_vehiculo_renta
ON alquiler_vehiculo USING GIST (renta);

--- EJERCICIO 26 ---
CREATE INDEX idx_portal_empleo_habilidades
ON portal_empleo USING GIN (habilidades);

--- EJERCICIO 27 ---
CREATE INDEX idx_red_ubicacion
ON red USING GIST (ubicacion);

--- EJERCICIO 28 ---
CREATE INDEX idx_transporte_rutas
ON transporte USING GIST (rutas);

--- EJERCICIO 29 ---
CREATE INDEX idx_biblioteca_fecha_prestamo
ON biblioteca USING GIST (fecha_prestamo);

--- EJERCICIO 30 ---
CREATE INDEX idx_productos_etiquetas
ON productos USING GIN (etiquetas);

--- EJERCICIO 31 ---
CREATE INDEX idx_usuarios_datos_jsonb
ON usuarios USING GIN (datos_jsonb);

--- EJERCICIO 32 ---
CREATE INDEX idx_documentos_contenido
ON documentos USING GIN (contenido);

--- EJERCICIO 33 ---
CREATE INDEX idx_empleos_habilidades
ON empleos USING GIN (habilidades);

--- EJERCICIO 34 ---
CREATE INDEX idx_mensajes_texto
ON mensajes USING GIN (texto);

--- EJERCICIO 35 ---
CREATE INDEX idx_pedidos_rango_entrega
ON pedidos USING GIN (rengo_entrega);

--- EJERCICIO 36 ---
CREATE INDEX idx_alquileres_duracion_alquiler
ON alquileres USING GIN (duracion_alquiler);

--- EJERCICIO 37 ---
CREATE INDEX idx_comentarios_contenido
ON comentarios USING GIN (contenido);

--- EJERCICIO 38 ---
CREATE INDEX idx_clientes_intereses
ON clientes USING GIN (intereses);

--- EJERCICIO 39 ---
CREATE INDEX idx_facturas_periodo_facturacion
ON facturas USING GIN (periodo_facturacion);

