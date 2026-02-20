

-- 10. Clientes que representam os 80% superiores de faturamento (cálculo cumulativo).

WITH t AS (
  SELECT id_cliente, SUM(valor) AS total
  FROM lancamento
  GROUP BY id_cliente
),
ordered AS (
  SELECT id_cliente, total,
         SUM(total) OVER (ORDER BY total DESC) AS cumul_total,
         SUM(total) OVER () AS total_geral
  FROM t
)
SELECT id_cliente, total, cumul_total, total_geral,
       cumul_total / total_geral AS cumul_fraction
FROM ordered
WHERE cumul_total / total_geral <= 0.8
ORDER BY total DESC;