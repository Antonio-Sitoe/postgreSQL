
-- 5. Exibir todas as **contas** junto com a soma dos lançamentos (incluir contas com SUM = NULL).
SELECT c.id, c.nome, SUM(l.valor) as total FROM lancamento l
RIGHT JOIN conta c on l.id_conta = c.id
group by c.id, c.nome


SELECT c.id, c.nome, SUM(l.valor) AS total
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id, c.nome;



