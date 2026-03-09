-- 6. Listar clientes com mesmo prefixo de CNPJ (ex.: os primeiros 2 dígitos iguais) — pares via SELF JOIN.

SELECT c1.nome_empresarial, c2.nome_empresarial from cliente c1
join cliente c2 on 
substring(c1.cnpj,1,2) = substring(c2.cnpj,1,2)
AND c1.id < c2.id;