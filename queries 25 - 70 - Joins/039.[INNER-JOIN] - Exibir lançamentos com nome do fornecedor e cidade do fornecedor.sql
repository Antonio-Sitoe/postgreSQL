-- 12. Exibir lançamentos com nome do fornecedor e cidade do fornecedor (INNER JOIN `fornecedor`).

SELECT f.nome_empresarial, f.cidade, l.descricao as lancamento FROM fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id

SELECT l.id, l.valor, f.nome_empresarial, f.cidade
FROM lancamento l
INNER JOIN fornecedor f ON l.id_fornecedor = f.id;








