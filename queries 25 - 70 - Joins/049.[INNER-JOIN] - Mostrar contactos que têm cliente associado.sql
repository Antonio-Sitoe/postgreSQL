  -- 4. Mostrar contactos que têm cliente associado (INNER JOIN `contacto`→`cliente`).
SELECT co.nome as cliente, cl.nome_empresarial as empresa FROM contacto co
INNER JOIN cliente cl ON cl.id = co.cliente_id


SELECT ct.nome AS nome_contacto, c.nome_empresarial
FROM contacto ct
INNER JOIN cliente c ON ct.cliente_id = c.id;







