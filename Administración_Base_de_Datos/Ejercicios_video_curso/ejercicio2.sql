CREATE TABLE Ventas (
  id_venta INT PRIMARY KEY AUTO_INCREMENT,
  fecha_venta DATETIME,,
  monto_total DECIMAL(8,2),
  metodo_pago VARCHAR(20),
  id_cliente INT,
  FOREIGN KEY (id_cliente)  REFERENCES  Clientes(id_cliente)
);
