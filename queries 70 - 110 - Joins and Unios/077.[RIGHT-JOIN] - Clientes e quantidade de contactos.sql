-- 7. Listar todos os **clientes** e a quantidade de contactos (JOIN com `contacto` usando RIGHT JOIN para garantir todos clientes à direita).
SELECT c.nome_empresarial as nome, COUNT(con.id) as contatos  FROM contacto con
right JOIN cliente c on con.cliente_id = c.id
group by c.nome_empresarial


SELECT c.id, c.nome_empresarial, COUNT(ct.id) AS total_contactos
FROM contacto ct
RIGHT JOIN cliente c ON ct.cliente_id = c.id
GROUP BY c.id, c.nome_empresarial;




