  -- 14. Listar apenas contas com pelo menos um lançamento e a média de valor por conta.

SELECT c.id, c.nome,COALESCE(AVG(l.valor),0) FROM conta c
INNER JOIN lancamento l ON l.id_conta = c.id
group by c.id, c.nome


SELECT co.nome,
       AVG(l.valor) AS media_valor
FROM conta co
INNER JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.nome;







