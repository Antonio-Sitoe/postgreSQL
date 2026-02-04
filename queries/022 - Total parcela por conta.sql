-- 27. Exiba o total de parcelas lançadas por conta.
SELECT id_conta, SUM(total_parcela) AS total_parcelas
FROM lancamento
GROUP BY id_conta
ORDER BY id_conta ASC;