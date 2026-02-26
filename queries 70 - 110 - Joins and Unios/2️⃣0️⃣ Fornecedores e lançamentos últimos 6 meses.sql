-- 20. Mostrar todas as **fornecedores** e quantos lançamentos cada um teve nos últimos 6 meses.

SELECT c.id, c.nome_empresarial as nome,
  count(l.id) FILTER (WHERE l.data_lancamento >= CURRENT_DATE - INTERVAL '6 months') as lancamentos
  FROM lancamento l
RIGHT JOIN fornecedor c on c.id = l.id_fornecedor
group by c.id, c.nome_empresarial order by lancamentos desc


SELECT f.id, f.nome_empresarial,
COUNT(l.id) FILTER (
  WHERE l.data_lancamento >= CURRENT_DATE - INTERVAL '6 months'
) AS total_6m
FROM lancamento l
RIGHT JOIN fornecedor f ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial order by total_6m desc



