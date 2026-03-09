X-- 23. Listar contas com o maior número de lançamentos, ordenando pelo número de lançamentos e limitando a N resultados.

SELECT c.nome, COUNT(l.id) as lancamentos FROM conta c
INNER JOIN lancamento l ON l.id_conta = c.id
GROUP BY c.nome
ORDER BY lancamentos
LIMIT 5










