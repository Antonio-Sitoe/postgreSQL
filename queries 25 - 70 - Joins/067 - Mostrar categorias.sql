-- 29. Mostrar todas as categorias e a média de parcelas (`AVG(total_parcela)`) de lançamentos naquela categoria.


SELECT cat.id, cat.nome, AVG(l.total_parcela) as total_parcela FROM categoria cat
LEFT JOIN lancamento l ON l.id_categoria = cat.id
GROUP BY cat.id, cat.nome

SELECT cat.id, cat.nome, AVG(l.total_parcela) AS media_parcelas
FROM categoria cat
LEFT JOIN lancamento l ON l.id_categoria = cat.id
GROUP BY cat.id, cat.nome;



