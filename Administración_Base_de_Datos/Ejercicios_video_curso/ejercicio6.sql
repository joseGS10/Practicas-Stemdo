SELECT SUM(monto_total) AS VentaTotal/Cliente, id_cliente
FROM Ventas
GROUP BY id_cliente; -- por defecto ordena de forma ascendente
