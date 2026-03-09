-- 27. Listar todas as contas e a quantidade de fornecedores diferentes que tiveram lançamentos vinculados a cada conta.

SELECT co.id, co.nome, COUNT(DISTINCT l.id_fornecedor) FROM conta co
INNER JOIN lancamento l on l.id_conta = co.id
GROUP BY co.id, co.nome

SELECT co.nome,
       COUNT(DISTINCT l.id_fornecedor) AS fornecedores_diferentes
FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.nome;








