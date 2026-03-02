

SELECT c.id, c.nome_empresarial as cliente, 
       SUM(l.valor) AS total_ultimos_12_meses
FROM cliente c
INNER JOIN lancamento l 
       ON l.id_cliente = c.id
      AND l.data_lancamento >= CURRENT_DATE - INTERVAL '12 months'
GROUP BY c.id, c.nome_empresarial
ORDER BY total_ultimos_12_meses ASC;