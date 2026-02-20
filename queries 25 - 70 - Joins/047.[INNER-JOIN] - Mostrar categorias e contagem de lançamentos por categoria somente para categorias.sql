-- 13. Mostrar categorias e contagem de lançamentos por categoria somente para categorias com `situacao = 'ATIVO'`.

SELECT cat.nome, COUNT(l.id) as lancamentos_por_categoria FROM categoria cat
INNER JOIN lancamento l ON l.id_categoria = cat.id
WHERE cat.situacao = 'ATIVO'
GROUP BY cat.nome


SELECT cat.nome, COUNT(l.id) AS total_lancamentos
FROM categoria cat
INNER JOIN lancamento l ON l.id_categoria = cat.id
WHERE cat.situacao = 'ATIVO'
GROUP BY cat.nome;









