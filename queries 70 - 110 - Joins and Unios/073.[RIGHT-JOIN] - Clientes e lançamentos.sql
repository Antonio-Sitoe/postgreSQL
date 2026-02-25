SELECT c.id, c.nome_empresarial, l.id AS lancamento_id
FROM lancamento l
RIGHT JOIN cliente c ON l.id_cliente = c.id;