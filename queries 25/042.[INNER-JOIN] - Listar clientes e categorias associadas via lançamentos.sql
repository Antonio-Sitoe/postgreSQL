-- 11. Listar clientes e categorias associadas via lançamentos (cliente → lancamento→categoria).

SELECT DISTINCT cl.nome_empresarial as nome, cat.nome as categoria FROM lancamento l
INNER JOIN categoria cat on cat.id = l.id_categoria
INNER JOIN cliente cl on cl.id = l.id_categoria

SELECT DISTINCT c.nome_empresarial, cat.nome AS categoria
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
INNER JOIN categoria cat ON l.id_categoria = cat.id;









