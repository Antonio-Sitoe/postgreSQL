-- 6. Contar quantos clientes há por estado
SELECT estado, COUNT(*) AS total_clientes
FROM cliente
GROUP BY estado;

SELECT COUNT(*) AS contagem, estado
FROM cliente
GROUP BY estado;

-- SELECT estado, COUNT(*) AS total_clientes FROM cliente GROUP BY estado ORDER BY total_clientes DESC;