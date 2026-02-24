-- 28. Mostrar categorias com AVG(valor) e ordenar pelas maiores médias (INNER JOIN).

SELECT cat.nome, AVG(l.valor) AS MEDIA
FROM categoria cat
INNER JOIN lancamento l ON l.id_categoria = cat.id
GROUP BY cat.nome
ORDER BY AVG(l.valor) DESC


SELECT cat.nome, AVG(l.valor) AS media_valor
FROM categoria cat
INNER JOIN lancamento l ON l.id_categoria = cat.id
GROUP BY cat.nome
ORDER BY media_valor DESC;







