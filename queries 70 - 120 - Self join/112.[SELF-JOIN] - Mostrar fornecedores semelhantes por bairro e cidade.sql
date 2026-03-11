-- 18. Mostrar fornecedores que são “semelhantes” por bairro e cidade (SELF JOIN com filters).

SELECT 
  f1.nome_empresarial,
  f2.nome_empresarial
FROM fornecedor f1
JOIN fornecedor f2
ON f1.bairro = f2.bairro
AND f1.cidade = f2.cidade
AND f1.id < f2.id;





