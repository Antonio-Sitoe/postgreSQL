SELECT 
    l.id,
    l.descricao,
    l.valor,
    l.data_lancamento,
    c.nome_empresarial AS cliente,
    f.nome_empresarial AS fornecedor
FROM lancamento l
INNER JOIN cliente c ON l.id_cliente = c.id
INNER JOIN fornecedor f ON l.id_fornecedor = f.id;