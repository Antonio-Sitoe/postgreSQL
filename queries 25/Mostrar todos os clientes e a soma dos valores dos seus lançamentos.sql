-- 5. Mostrar todos os clientes e a soma dos valores dos seus lançamentos (NULL quando não houver).

SELECT c.nome_empresarial as nome, SUM(l.valor) as valor_total  FROM cliente c
LEFT JOIN lancamento l ON l.id_cliente = c.id
GROUP BY nome
ORDER BY valor_total


SELECT c.id, c.nome_empresarial, SUM(l.valor) AS soma_valor
FROM cliente c
LEFT JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.id, c.nome_empresarial;