-- 23. Exiba o valor total dos lançamentos por cliente.
SELECT lanc.id_cliente, cliente.nome_empresarial, SUM(lanc.valor) as valorTotal FROM lancamento as lanc
JOIN cliente
ON cliente.id = lanc.id_cliente
group BY lanc.id_cliente, cliente.nome_empresarial
ORDER BY lanc.id_cliente ASC

