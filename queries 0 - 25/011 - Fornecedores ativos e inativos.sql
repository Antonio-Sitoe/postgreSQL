-- 6. Conte quantos fornecedores estão ativos e quantos estão inativos.
SELECT
  SUM(CASE WHEN situacao = 'ATIVO' THEN 1 ELSE 0 END) AS ativos,
  SUM(CASE WHEN situacao = 'INATIVO' THEN 1 ELSE 0 END) AS inativos
FROM fornecedor;








