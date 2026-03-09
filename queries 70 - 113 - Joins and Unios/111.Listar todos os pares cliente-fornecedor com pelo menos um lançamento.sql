-- 9. Listar todos os pares cliente → fornecedor que possuem pelo menos um lançamento, sem duplicados.

SELECT DISTINCT c.nome_empresarial, f.nome_empresarial
FROM lancamento l
INNER JOIN cliente c ON c.id = l.id_cliente
INNER JOIN fornecedor f ON f.id = l.id_fornecedor;








