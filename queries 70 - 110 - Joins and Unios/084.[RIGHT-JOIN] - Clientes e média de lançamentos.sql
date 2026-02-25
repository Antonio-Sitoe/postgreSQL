SELECT c.id, c.nome_empresarial, AVG(l.valor) AS media
FROM lancamento l
RIGHT JOIN cliente c ON l.id_cliente = c.id
GROUP BY c.id, c.nome_empresarial;