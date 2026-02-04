-- 30. Mostre, para cada categoria, o número de lançamentos e o valor total associado.

SELECT 
  categoria.nome  AS nome,
  SUM(lancamento.valor) as TotalAssociado,
  COUNT(*) as NumeroDeLancamentos
FROM lancamento
JOIN categoria ON categoria.id = lancamento.id_categoria
GROUP BY categoria.nome





