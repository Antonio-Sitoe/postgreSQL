-- 4. Listar categoria-pai e soma dos valores dos lançamentos em todas as suas filhas.

SELECT 
  pai.id,
  pai.nome,
  SUM(l.valor) AS total_lancamentos
FROM categoria pai
JOIN categoria filha 
  ON filha.id_pai = pai.id
JOIN lancamento l 
  ON l.id_categoria = filha.id
WHERE pai.id_pai IS NULL
GROUP BY pai.id, pai.nome;







