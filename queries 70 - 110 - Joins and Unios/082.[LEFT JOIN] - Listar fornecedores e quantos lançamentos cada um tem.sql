-- 4. Listar fornecedores e quantos lançamentos cada um tem (inclusive fornecedores sem lançamentos).

SELECT 
  f.id, 
  f.nome_empresarial AS fornecedor, 
  COUNT(l.id) as lancamentos 
FROM fornecedor f
LEFT JOIN lancamento l ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial
ORDER BY lancamentos DESC;







