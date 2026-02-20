  -- 3. Exibir fornecedores que aparecem em lançamentos e o SUM(valor) por fornecedor (INNER JOIN).
SELECT f.nome_empresarial, SUM(l.valor) FROM lancamento l
INNER JOIN fornecedor f ON f.id = l.id_conta
group by f.nome_empresarial











