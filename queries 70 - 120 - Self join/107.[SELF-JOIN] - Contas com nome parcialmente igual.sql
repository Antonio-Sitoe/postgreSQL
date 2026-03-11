-- 21. Listar contas onde `nome` coincide parcialmente (SELF JOIN por `nome ILIKE '%' || other.nome || '%'`).

SELECT 
  c1.nome,
  c2.nome
FROM conta c1
JOIN conta c2
ON c1.nome ILIKE '%' || c2.nome || '%'
AND c1.id <> c2.id;








