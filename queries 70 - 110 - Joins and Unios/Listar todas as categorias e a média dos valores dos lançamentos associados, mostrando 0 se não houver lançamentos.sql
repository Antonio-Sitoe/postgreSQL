-- 12. Listar todas as categorias e a média dos valores dos lançamentos associados, mostrando 0 se não houver lançamentos.

SELECT cat.id, cat.nome, COALESCE(AVG(l.valor), 0) as media
FROM categoria cat 
LEFT JOIN lancamento l ON l.id_categoria = cat.id
GROUP BY cat.id, cat.nome
ORDER BY cat.id







