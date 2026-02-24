-- 28. Listar fornecedores e o número de lançamentos nos últimos 3 meses (0 se nenhum).

SELECT f.id, f.nome_empresarial, COUNT(l.id) FILTER (WHERE l.data_vencimento >= CURRENT_DATE - INTERVAL '3 months') AS lanc_3m
FROM fornecedor f
LEFT JOIN lancamento l ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial;





