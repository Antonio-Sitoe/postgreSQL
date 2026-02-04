-- 24. Calcule o valor total dos lançamentos registrados.
SELECT SUM(valor) AS valor_total_lancamentos
FROM lancamento;


-- Calcule o total de lançamentos registrados.
SELECT SUM(valor) AS totalLancamento FROM lancamento


SELECT COUNT(*) AS total_lancamentos
FROM lancamento;