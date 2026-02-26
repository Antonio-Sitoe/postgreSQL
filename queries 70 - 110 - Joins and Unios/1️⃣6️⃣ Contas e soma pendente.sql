-- 16. Listar todas as contas e a soma de parcelas pendentes (`situacao = 'PENDENTE'`), com zero/NULL para contas sem pendências.

SELECT c.id,  c.nome, 
 SUM(l.valor) FILTER (WHERE l.situacao = 'PENDENTE')  as total_parcela
FROM lancamento l 
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id,  c.nome
ORDER BY total_parcela


SELECT c.id, c.nome,
SUM(CASE WHEN l.situacao = 'PENDENTE' THEN l.valor END) AS total_pendente
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id, c.nome
ORDER BY total_pendente



