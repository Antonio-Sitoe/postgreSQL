-- 4. Top 5 clientes que geraram maior receita (Pareto: 20% que respondem por 80%).
WITH cliente_total AS (
  SELECT id_cliente, SUM(valor) AS total
  FROM lancamento
  GROUP BY id_cliente
),
tot AS (SELECT SUM(total) AS faturamento_total FROM cliente_total)
SELECT ct.id_cliente, ct.total,
       ct.total / tot.faturamento_total AS percent_faturamento
FROM cliente_total ct, tot
ORDER BY ct.total DESC
LIMIT (SELECT GREATEST(1, CEIL(COUNT(*) * 0.20)) FROM cliente_total);











