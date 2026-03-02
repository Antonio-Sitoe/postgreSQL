SELECT c.id, c.nome,
SUM(CASE WHEN l.situacao = 'PAGO' THEN l.valor END) AS total_pago,
SUM(CASE WHEN l.situacao = 'PENDENTE' THEN l.valor END) AS total_pendente
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id, c.nome;