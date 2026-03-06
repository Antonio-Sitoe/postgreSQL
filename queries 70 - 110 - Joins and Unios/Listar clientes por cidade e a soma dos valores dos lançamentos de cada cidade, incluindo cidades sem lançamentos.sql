-- Listar clientes por cidade e a soma dos valores dos lançamentos de cada cidade, incluindo cidades sem lançamentos (total = 0).
SELECT c.cidade, COALESCE(SUM(l.valor), 0) as valor_total FROM cliente c
LEFT JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.cidade
