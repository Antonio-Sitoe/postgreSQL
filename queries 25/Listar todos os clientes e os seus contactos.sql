-- 1. Listar todos os clientes e os seus contactos (mostrar NULL se não tiver contacto).


SELECT cliente.nome_empresarial as Empresa, contacto.nome as funcionario, contacto.telefone FROM cliente
LEFT JOIN contacto ON cliente.id = contacto.cliente_id


SELECT c.id, c.nome_empresarial, ct.id AS contacto_id, ct.nome AS contacto_nome
FROM cliente c
LEFT JOIN contacto ct ON ct.cliente_id = c.id;







