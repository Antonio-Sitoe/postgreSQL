-- 10. Mostrar fornecedores e os lançamentos associados cujo `valor` > 1000 (INNER JOIN + WHERE).

SELECT f.nome_empresarial, l.id, l.descricao, l.valor from fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id 
WHERE l.valor > 1000

SELECT f.nome_empresarial, l.id, l.valor
FROM fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id
WHERE l.valor > 1000;








