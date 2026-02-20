-- 14. Listar lançamentos e o contacto (se o lançamento tiver `id_cliente` vinculado) —
-- apenas onde existe contacto do cliente (INNER JOIN dupla via cliente→contacto).

SELECT cont.nome, l.descricao, l.valor FROM lancamento l
INNER JOIN cliente cl ON cl.id = l.id_cliente
INNER JOIN contacto cont ON cont.cliente_id = cl.id
WHERE l.id_cliente IS NOT NULL

SELECT l.id, l.valor, ct.nome AS nome_contacto
FROM lancamento l
INNER JOIN cliente c ON l.id_cliente = c.id
INNER JOIN contacto ct ON ct.cliente_id = c.id;








