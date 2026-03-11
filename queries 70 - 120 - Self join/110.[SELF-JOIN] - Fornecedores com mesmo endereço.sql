
SELECT 
  f1.nome_empresarial,
  f2.nome_empresarial
FROM fornecedor f1
JOIN fornecedor f2
ON f1.endereco = f2.endereco
AND f1.numero = f2.numero
AND f1.id < f2.id;