
-- 1. Listar todos os lançamentos com o nome do cliente (INNER JOIN `lancamento` → `cliente`).

SELECT cliente.nome_empresarial, lancamento.* FROM lancamento
INNER JOIN cliente ON cliente.id = lancamento.id_cliente








