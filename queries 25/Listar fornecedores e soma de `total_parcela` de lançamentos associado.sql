-- 26. Listar fornecedores e soma de `total_parcela` de lançamentos associados (INNER JOIN + SUM).

SELECT f.nome_empresarial, SUM(l.total_parcela) as total FROM fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id
GROUP BY f.nome_empresarial

SELECT f.nome_empresarial, SUM(l.total_parcela) AS soma_parcelas
FROM fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id
GROUP BY f.nome_empresarial;







