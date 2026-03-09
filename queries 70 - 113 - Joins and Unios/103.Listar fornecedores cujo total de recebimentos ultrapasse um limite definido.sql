-- 25. Listar fornecedores cujo total de recebimentos (SUM(valor)) ultrapasse um limite definido, incluindo apenas fornecedores com lançamentos.

SELECT 
    f.id, 
    f.nome_empresarial as nome,
    SUM(l.valor) as total
FROM fornecedor f
INNER JOIN lancamento l ON f.id = l.id_fornecedor
GROUP BY f.id, 
    f.nome_empresarial
HAVING SUM(l.valor) > 5000;






