  -- 9. Listar todas as contas e a média dos valores dos lançamentos (NULL quando não houver).

SELECT c.nome, AVG(l.valor) AS media FROM conta c
LEFT JOIN lancamento l  ON l.id_conta = c.id
GROUP BY c.nome


SELECT co.id, co.nome, AVG(l.valor) AS media_valor
FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.id, co.nome;







