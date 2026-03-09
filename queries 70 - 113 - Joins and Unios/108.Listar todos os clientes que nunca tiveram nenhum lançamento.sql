-- 13. Listar todos os clientes que nunca tiveram nenhum lançamento.

SELECT 
     c.id,
     c.nome_empresarial as nome
FROM cliente c
LEFT JOIN lancamento l ON l.id_cliente = c.id 
WHERE l.id IS NULL


SELECT c.*
FROM cliente c
WHERE NOT EXISTS (
    SELECT 1
    FROM lancamento l
    WHERE l.id_cliente = c.id
);








