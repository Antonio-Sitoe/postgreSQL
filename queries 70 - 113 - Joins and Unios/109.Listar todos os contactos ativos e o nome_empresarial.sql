
  -- 7. Listar todos os contactos ativos (situacao = 'ATIVO') e o nome_empresarial do
  --   cliente a que pertencem, mostrando NULL se não estiver associado a nenhum cliente.

SELECT co.id, co.nome, co.telefone, c.nome_empresarial as cliente FROM contacto co
LEFT JOIN cliente c on c.id = co.cliente_id AND co.situacao = 'ATIVO'









