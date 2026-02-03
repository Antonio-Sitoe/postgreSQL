-- 22. Mostre o valor médio (AVG) dos lançamentos pagos (situacao = 'PAGO').

SELECT ROUND(AVG(valor)::float, 2) AS media
FROM lancamento
WHERE situacao = 'PAGO';









