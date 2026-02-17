-- 6. Exibir clientes que têm pelo menos um contacto e o número de contactos.
--    resposta

SELECT c.nome_empresarial, COUNT(ct.id) AS total_contactos
FROM cliente c
INNER JOIN contacto ct ON ct.cliente_id = c.id
GROUP BY c.nome_empresarial;