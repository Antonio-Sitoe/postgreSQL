-- 10. 00 (SUM(valor)), incluindo fornecedores sem lançamentos.\

SELECT f.nome_empresarial as nome, SUM(l.valor) as total FROM lancamento l
RIGHT JOIN fornecedor f on f.id = l.id_fornecedor
GROUP BY nome

SELECT f.id, f.nome_empresarial, SUM(l.valor) AS total_recebido
FROM lancamento l
RIGHT JOIN fornecedor f ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial;






