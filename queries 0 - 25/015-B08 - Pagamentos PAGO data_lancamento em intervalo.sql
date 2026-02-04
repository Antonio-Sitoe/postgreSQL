-- 8. Pagamentos (situação = 'PAGO') cujo pagamento ocorreu num intervalo.
-- Usamos data_lancamento como proxy. Intervalo exemplo: jan–jun 2024.
SELECT *
FROM lancamento
WHERE situacao = 'PAGO'
  AND data_lancamento BETWEEN '2024-01-01 00:00:00' AND '2024-06-30 23:59:59'
ORDER BY data_lancamento;
