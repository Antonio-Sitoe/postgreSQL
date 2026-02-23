-- 26. Listar todos os clientes e o total de parcelas (SUM(total_parcela)) registradas por cliente.

SELECT cl.id, cl.nome_empresarial as nome, SUM(l.total_parcela) as total FROM cliente cl
left join lancamento l on l.id_cliente = cl.id
group by cl.id, cl.nome_empresarial


SELECT c.id, c.nome_empresarial, SUM(l.total_parcela) AS soma_parcelas
FROM cliente c
LEFT JOIN lancamento l ON l.id_cliente = c.id
GROUP BY c.id, c.nome_empresarial;






