-- 15. Exibir todas as fornecedores com o número de categorias para as quais receberam lançamentos (RIGHT JOIN).

SELECT f.id, f.nome_empresarial, COUNT(DISTINCT l.id_categoria) AS categorias
FROM lancamento l
RIGHT JOIN fornecedor f ON l.id_fornecedor = f.id
GROUP BY f.id, f.nome_empresarial;




