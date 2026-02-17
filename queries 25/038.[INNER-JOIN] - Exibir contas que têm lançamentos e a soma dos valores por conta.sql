-- 9. Exibir contas que têm lançamentos e a soma dos valores por conta (INNER JOIN)

SELECT c.nome, SUM(l.valor) AS total FROM conta c
INNER JOIN lancamento l on c.id = l.id_conta GROUP by c.nome

SELECT c.nome, SUM(l.valor) AS total_valor
FROM conta c
INNER JOIN lancamento l ON l.id_conta = c.id
GROUP BY c.nome;








