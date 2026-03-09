SELECT c.id, c.nome, MAX(l.valor) AS maior_valor
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id
GROUP BY c.id, c.nome;