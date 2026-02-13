-- 2. Mostre a quantidade de clientes por estado.
SELECT estado, COUNT(*) AS total_clientes
FROM cliente
GROUP BY estado;