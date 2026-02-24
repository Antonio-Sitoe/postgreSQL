-- 15. Listar todas as categorias e, se existir, 
-- a nota média dos fornecedores que receberam lançamentos nessa categoria (usar JOIN via lancamento → fornecedor).

SELECT cat.nome, AVG(f.nota) as media FROM categoria cat
left join lancamento l ON l.id_categoria = cat.id
left join fornecedor f ON l.id_fornecedor = f.id
group by cat.nome


SELECT cat.id, cat.nome, AVG(f.nota) AS media_nota_fornecedores
FROM categoria cat
LEFT JOIN lancamento l ON l.id_categoria = cat.id
LEFT JOIN fornecedor f ON f.id = l.id_fornecedor
GROUP BY cat.id, cat.nome;
