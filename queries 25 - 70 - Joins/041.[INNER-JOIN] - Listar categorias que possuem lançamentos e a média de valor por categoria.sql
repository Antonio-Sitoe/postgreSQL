-- 5. Listar categorias que possuem lançamentos e a média de valor por categoria.
--    resposta

SELECT cat.nome, AVG(l.valor) AS media_valor
FROM lancamento l
INNER JOIN categoria cat ON l.id_categoria = cat.id
GROUP BY cat.nome;
