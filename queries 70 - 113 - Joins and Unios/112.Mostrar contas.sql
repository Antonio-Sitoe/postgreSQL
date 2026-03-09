-- 10. Listar todas as contas e a data_vencimento do último lançamento (mais recente), mostrando NULL se a conta não tiver lançamentos.

SELECT co.nome,
       MAX(l.data_vencimento) AS ultimo_lancamento
FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.nome;







