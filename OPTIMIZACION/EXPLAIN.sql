--- EJERFCICIO 1---
EXPLAIN SELECT * FROM empleados WHERE salario > 5000;

--- EJERCICIO 2 ---
EXPLAIN SELECT
             id_pedido,
	         fecha_pedido,
             EXTRACT(MONTH FROM fecha_pedido) AS mes
FROM pedidos
WHERE EXTRACT(MONTH FROM fecha_pedido) = 1;

--- EJERCICIO 3 ---
EXPLAIN SELECT nombre_producto,
       precio
FROM productos
WHERE precio > 100;

--- EJERCICIO 4 ---
EXPLAIN SELECT nombre_cliente
FROM clientes
WHERE nombre_cliente LIKE 'C%';

--- EJERCICIO 5 ---
EXPLAIN SELECT cl.nombre_cliente,
               p.fecha_pedido
		FROM clientes cl
		JOIN pedidos p
		ON cl.id_cliente = p.id_cliente;

--- EJERCICIO 6 ---
EXPLAIN SELECT id_factura,
               fecha_pago,
			   monto
FROM facturas
WHERE fecha_pago >= CURRENT_DATE - INTERVAL '7 days' ;

--- EJERCICIO 7 ---
EXPLAIN SELECT libro,
               paginas
FROM biblioteca
WHERE paginas > 500;

--- EJERCICIO 8 ---
EXPLAIN SELECT nombre_producto,
               precio
FROM productos
WHERE precio > 10000;

--- EJERCICIO 9 ---
EXPLAIN WITH maximo_sueldo AS (
       SELECT nombre,
	          id_departamento,
			  salario,
	          MAX(salario)OVER(PARTITION BY id_departamento ORDER BY salario DESC) AS max_salario,
			  ROW_NUMBER() OVER(PARTITION BY id_departamento ORDER BY salario DESC) AS ranking
	   FROM empleados
)
SELECT nombre,
       id_departamento,
	   max_salario,
	   ranking
FROM maximo_sueldo
WHERE ranking = 1;

--- EJERCICIO 10 ---
EXPLAIN SELECT fecha_reserva, 
               estado
FROM hotel
WHERE estado = 'Activo';

--- EJERCICIO 11 ---
EXPLAIN ANALYZE SELECT id_prestamo,
                       fecha_prestamo
				FROM bibliotecas
				WHERE fecha_prestamo >= CURRENT_DATE - INTERVAL '1 month';

--- EJERCICIO 12 ---
EXPLAIN ANALYZE SELECT id_estudiante, 
               ROUND (AVG(nota), 2) AS promedio_nota
		FROM calificaciones
		GROUP BY id_estudiante;

--- EJERCICIO 13 ---
EXPLAIN ANALYZE SELECT nombre_cliente
        FROM clientes
		WHERE nombre_cliente LIKE 'A%';

--- EJERCICIO 14 ---
EXPLAIN ANALYZE SELECT id_cuenta, 
                monto
		FROM cuentas_bancarias
		WHERE monto > 1000;

--- EJERCICIO 15 ---
EXPLAIN ANALYZE SELECT direccion, 
                fecha_registro
		FROM direcciones
		WHERE fecha_registro >= CURRENT_DATE - INTERVAL '1 year';

--- EJERCICIO 16 ---
EXPLAIN ANALYZE SELECT id_departamento,
                MAX(salario) AS maximo_salario
		FROM empleados
		GROUP BY id_departamento
		ORDER BY id_departamento;

--- EJERCICIO 17 ---
EXPLAIN ANALYZE SELECT id_factura,
                fecha_pago
		FROM facturas
		WHERE fecha_pago >= CURRENT_DATE - INTERVAL '30 days';

--- EJERCICIO 18 ---
EXPLAIN ANALYZE SELECT id_chat,
                id_usuario,
				contenido
		FROM mensajes
		WHERE contenido LIKE '%s%';

--- EJERCICIO 19 ---
EXPLAIN ANALYZE WITH ranking_pedidos AS (
        SELECT id_cliente,
                total,
                COUNT(*) OVER(PARTITION BY id_cliente ) AS total_pedidos,
				ROW_NUMBER()OVER(PARTITION BY id_cliente ) AS ranking
		FROM pedidos
)
SELECT id_cliente,
       total,
	   total_pedidos
FROM ranking_pedidos
WHERE ranking = 1
ORDER BY total_pedidos ASC;

--- EJERCICIO 20 ---
EXPLAIN ANALYZE SELECT id_vehiculo,
                fecha_renta
		FROM rentas_autos
		WHERE fecha_renta >= CURRENT_DATE - INTERVAL '30 days';
                
--- EJERCICIO 21 ---
CREATE INDEX idx_clientes_nombre_cliente
ON clientes (nombre_cliente);

EXPLAIN ANALYZE SELECT nombre_cliente
        FROM clientes
		WHERE nombre_cliente LIKE '%m%';

--- EJERCICIO 22 ---
CREATE INDEX idx_ventas_fecha_venta
ON ventas (fecha_venta);

EXPLAIN ANALYZE SELECT id_venta,
                fecha_venta
		FROM ventas
		WHERE fecha_venta >= CURRENT_DATE - INTERVAL '3 months';

--- EJERCICIO 23 ---
CREATE INDEX idx_productos_precio
ON productos USING HASH(precio);

EXPLAIN ANALYZE SELECT nombre_producto,
                precio
		FROM productos
		WHERE precio > 1000;

--- EJERCICIO 24 ---
CREATE INDEX idx_empleados_salario
ON empleados (salario);

EXPLAIN ANALYZE SELECT nombre,
                salario
	    FROM empleados
		WHERE salario > 350;

--- EJERCICIO 25 ---
CREATE INDEX idx_cuentas_bancarias_id_cuenta
ON cuentas_bancarias(id_cuenta);
CREATE INDEX idx_cuenta_id_cuenta
ON cuenta(id_cuenta);

EXPLAIN ANALYZE SELECT c.nombre_cuenta,
                cb.monto
		FROM cuenta c
		JOIN cuentas_bancarias cb
		ON c.id_cuenta = cb.id_cuenta
		WHERE cb.monto > 3500;

--- EJERCICIO 26 ---
CREATE INDEX idx_pedido_id_cliente
ON pedidos (id_cliente);
CREATE INDEX idx_clientes_id_cliente
ON clientes (id_cliente);

EXPLAIN ANALYZE SELECT id_cliente,
                COUNT(*) AS N_pedidos
		FROM pedidos
		GROUP BY id_cliente;

--- EJERCICIO 27 ---
CREATE INDEX idx_direcciones_fecha_registro
ON direcciones (fecha_registro);

EXPLAIN ANALYZE SELECT direccion,
                fecha_registro
		FROM direcciones
		WHERE fecha_registro >= CURRENT_DATE - INTERVAL '1 year';

--- EJERCICIO 28 ---
CREATE INDEX idx_facturas_monto
ON facturas (monto);

EXPLAIN ANALYZE SELECT id_factura,
                monto
		FROM facturas
	    WHERE monto > 4000;