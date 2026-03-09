-- Listar todos os lançamentos com nome da conta, 
-- cliente e fornecedor, mesmo que algum relacionamento esteja ausente, ordenados por data_vencimento.

SELECT 
    l.id, 
    l.valor, 
    co.nome as conta, 
    c.nome_empresarial as cliente, 
    f.nome_empresarial as fornecedor
 FROM lancamento l
LEFT join fornecedor f on f.id = l.id_fornecedor
LEFT JOIN cliente c ON c.id = l.id_cliente
LEFT JOIN conta co ON c.id = l.id_conta
ORDER BY l.data_vencimento;


SELECT l.id,
       co.nome AS conta,
       c.nome_empresarial AS cliente,
       f.nome_empresarial AS fornecedor,
       l.data_vencimento
FROM lancamento l
LEFT JOIN conta co ON co.id = l.id_conta
LEFT JOIN cliente c ON c.id = l.id_cliente
LEFT JOIN fornecedor f ON f.id = l.id_fornecedor
ORDER BY l.data_vencimento;










