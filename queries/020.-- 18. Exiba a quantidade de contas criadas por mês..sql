-- 18. Exiba a quantidade de contas criadas por mês.

SELECT DATE_TRUNC('month', data_criacao) AS mes, COUNT(*) AS total_contas
FROM conta
GROUP BY mes
ORDER BY mes ASC;