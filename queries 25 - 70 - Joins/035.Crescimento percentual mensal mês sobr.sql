    -- 7. **Crescimento percentual mensal (mês sobre mês).**


WITH mensal AS (
  SELECT date_trunc('month', data_lancamento) AS mes,
         SUM(valor) AS faturamento
  FROM lancamento
  GROUP BY 1
)
SELECT mes,
       faturamento,
       LAG(faturamento) OVER (ORDER BY mes) AS faturamento_prev,
       CASE WHEN LAG(faturamento) OVER (ORDER BY mes) IS NULL THEN NULL
            ELSE 100.0 * (faturamento - LAG(faturamento) OVER (ORDER BY mes)) / LAG(faturamento) OVER (ORDER BY mes)
       END AS crescimento_percent
FROM mensal
ORDER BY mes;




