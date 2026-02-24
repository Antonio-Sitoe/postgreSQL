-- 14. Mostrar todos os contactos e o nome do cliente; incluir contactos mesmo que o cliente esteja ausente (teoricamente não deve, mas mantém LEFT JOIN).

select co.nome, c.nome_empresarial as empresa from contacto co
left join cliente c on co.cliente_id = c.id 

SELECT ct.id, ct.nome, c.nome_empresarial
FROM contacto ct
LEFT JOIN cliente c ON ct.cliente_id = c.id;




