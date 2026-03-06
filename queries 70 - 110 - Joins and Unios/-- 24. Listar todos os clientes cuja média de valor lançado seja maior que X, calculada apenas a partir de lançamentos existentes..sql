
-- 24. Listar todos os clientes cuja média de valor lançado seja maior que X, calculada apenas a partir de lançamentos existentes.

SELECT 
  c.id, 
  c.nome_empresarial as cliente,
  ROUND(AVG(l.valor), 0)  as media
  
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id  
GROUP BY c.id, c.nome_empresarial 
  HAVING AVG(l.valor) > 4000



SELECT c.nome_empresarial,
       AVG(l.valor) AS media_valor
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.nome_empresarial
HAVING AVG(l.valor) > 1000;



