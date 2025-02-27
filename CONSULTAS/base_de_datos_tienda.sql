CREATE TABLE tienda.clientes (
   cliente_id SERIAL PRIMARY KEY,
   nombre VARCHAR (100) NOT NULL,
   correo VARCHAR (100) UNIQUE
);

CREATE TABLE tienda.productos (
  producto_id SERIAL PRIMARY KEY,
  cliente_id INT UNIQUE,
  nombre VARCHAR (100),
  correo VARCHAR (100),
  FOREIGN KEY (cliente_id) REFERENCES tienda.clientes(cliente_id)
);

CREATE TABLE tienda.venta(
venta_id SERIAL PRIMARY kEY,
cliente_id INT,
fecha DATE,
FOREIGN KEY (cliente_id) REFERENCES tienda.clientes(cliente_id)
);