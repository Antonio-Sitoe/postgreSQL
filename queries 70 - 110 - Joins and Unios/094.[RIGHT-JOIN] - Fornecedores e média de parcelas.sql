-- 25. Listar todas as fornecedores e a média de parcelas (`AVG(total_parcela)`) em lançamentos vinculados (inclui sem lanç.).

SELECT 
    f.id, 
    f.nome_empresarial as nome, 
    AVG(l.total_parcela) AS media
FROM lancamento l
right JOIN fornecedor f 
    ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial
ORDER BY f.id;


SELECT f.id, f.nome_empresarial, AVG(l.total_parcela) AS media_parcelas
FROM lancamento l
RIGHT JOIN fornecedor f ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial;






