-- Mostre o total de contas cadastradas por agência.
SELECT agencia, COUNT(*) AS total_contas
FROM conta
GROUP BY agencia
ORDER BY agencia ASC;