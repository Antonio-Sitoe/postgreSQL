-- 27. Exibir todas as contas e a soma dos valores de lançamentos filtrados por um período (ex.: 2025).
SELECT c.id, c.nome,
SUM(l.valor) FILTER (
  WHERE l.data_lancamento BETWEEN '2025-01-01' AND '2026-12-31'
) AS total_2025
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id, c.nome;









