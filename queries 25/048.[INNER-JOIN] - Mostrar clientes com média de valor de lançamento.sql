
-- O INNER JOIN retorna somente as linhas que possuem correspondência entre as tabelas.
-- Se uma das tabelas não tiver correspondência, o registro é ignorado.
-- É o JOIN mais usado quando queremos combinar informações que realmente se relacionam.
-- Ex.: mostrar clientes que possuem pelo menos um contacto.

-- 16. Mostrar clientes com média de valor de lançamento (INNER JOIN + AVG + GROUP BY).


SELECT cl.nome_empresarial, AVG(l.valor) as Media FROM cliente cl
INNER JOIN lancamento l ON l.id_cliente = cl.id
GROUP BY cl.nome_empresarial


SELECT c.nome_empresarial, AVG(l.valor) AS media_valor
FROM cliente c
INNER JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.nome_empresarial;








