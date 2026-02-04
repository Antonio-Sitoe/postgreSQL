-- 1. Conte quantos clientes estão ativos e quantos estão inativos.
SELECT 
     (SELECT count(*) AS clientesAtivos FROM cliente WHERE situacao = 'ATIVO'),
     (SELECT count(*) as clientesInativos FROM cliente WHERE situacao = 'INATIVO');