  -- 13. Listar todas as contas e a quantidade de fornecedores distintos que apareceram em lançamentos da conta.


SELECT co.id, co.nome, COUNT(DISTINCT l.id_fornecedor) FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.id, co.nome

SELECT co.id, co.nome, COUNT(DISTINCT l.id_fornecedor) AS qtd_fornecedores
FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.id, co.nome;




