-- 25. Mostrar lançamentos com nome do cliente e email do cliente (INNER JOIN).

SELECT l.id, l.valor, c.nome_empresarial, c.email
FROM lancamento l
INNER JOIN cliente c ON l.id_cliente = c.id;








