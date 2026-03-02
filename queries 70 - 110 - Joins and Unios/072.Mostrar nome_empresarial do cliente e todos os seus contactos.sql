-- 1. Mostrar nome_empresarial do cliente e todos os seus contactos (nome do contacto e email).

SELECT c.nome_empresarial as Empresa, co.nome, co.email FROM cliente c 
inner JOIN contacto co ON co.cliente_id = c.id









