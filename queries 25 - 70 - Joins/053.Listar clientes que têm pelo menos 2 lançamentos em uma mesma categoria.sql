-- 29. Listar clientes que têm pelo menos 2 lançamentos em uma mesma categoria (INNER JOIN + HAVING COUNT >= 2).

SELECT c.nome_empresarial, COUNT(l.id) as total_lancamentos FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.nome_empresarial
HAVING COUNT(l.id) >= 42;

SELECT c.nome_empresarial, l.id_categoria, COUNT(*) AS total
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.nome_empresarial, l.id_categoria
HAVING COUNT(*) >= 2;








