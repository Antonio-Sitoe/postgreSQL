-- 7. Mostre o número de fornecedores por estado, ordenado do maior para o menor.
SELECT 
  estado, 
  COUNT(*) AS quantidade_fornecedores
FROM 
  fornecedor
GROUP BY 
  estado
ORDER BY 
  quantidade_fornecedores DESC, estado;
