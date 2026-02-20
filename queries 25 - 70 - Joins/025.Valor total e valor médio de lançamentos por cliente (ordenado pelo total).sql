-- 1. Valor total e valor médio de lançamentos por cliente (ordenado pelo total).
-- cliente, valor_total, valor_medio

SELECT 
  cl.id, 
  cl.nome_empresarial AS cliente,
  COUNT(lanc.id) AS quantidade_lancamentos, 
  SUM(lanc.valor) AS valor_total, 
  ROUND(AVG(lanc.valor), 2) AS valor_medio
FROM lancamento lanc
LEFT JOIN cliente cl ON cl.id = lanc.id_cliente
GROUP BY cl.id, cl.nome_empresarial
ORDER BY valor_total DESC;


SELECT id_cliente,
       COUNT(*) AS qtd_lancamentos,
       SUM(valor) AS total_valor,
       AVG(valor) AS media_valor
FROM lancamento
GROUP BY id_cliente
ORDER BY total_valor DESC;




