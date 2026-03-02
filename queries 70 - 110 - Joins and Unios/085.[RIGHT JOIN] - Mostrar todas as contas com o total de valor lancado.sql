-- 5. Mostrar todas as contas com o total de valor lançado (SUM) e a quantidade de lançamentos.

SELECT 
  c.id, 
  c.nome,
  SUM(l.valor) AS total_valor,
  COUNT(l.id) AS quantidade_lancamentos
FROM conta c
LEFT JOIN lancamento l  ON l.id_conta = c.id
GROUP BY c.id, c.nome










