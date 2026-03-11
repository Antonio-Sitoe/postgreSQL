-- 22. Exibir fornecedores cujo `cnpj` compartilha o mesmo raiz (primeiros 8 caracteres) — SELF JOIN por substring(cnpj,1,8).

SELECT 
  f1.nome_empresarial,
  f2.nome_empresarial
FROM fornecedor f1
JOIN fornecedor f2
ON substring(f1.cnpj,1,8) = substring(f2.cnpj,1,8)
AND f1.id < f2.id;







