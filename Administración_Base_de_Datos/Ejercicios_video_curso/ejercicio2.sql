CREATE TABLE Ventas (
  id_venta INT PRIMARY KEY AUTO_INCREMENT,
  fecha_venta DATETIME,,
  monto_total DECIMAL(12,2),
  metodo_pago VARCHAR(20),
  id_cliente INT FOREIGN KEY REFERENCES ,
);
