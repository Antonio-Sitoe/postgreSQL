-- 8. Listar clientes e todos os seus lançamentos ocorridos em 2026 (INNER JOIN + filtro de data).

SELECT c.nome_empresarial, l.descricao, l.id, l.valor FROM lancamento l 
INNER JOIN cliente c ON c.id = l.id_cliente
WHERE EXTRACT(YEAR FROM l.data_lancamento) = 2026


SELECT c.nome_empresarial, l.id, l.valor, l.data_lancamento
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
WHERE EXTRACT(YEAR FROM l.data_lancamento) = 2025;







