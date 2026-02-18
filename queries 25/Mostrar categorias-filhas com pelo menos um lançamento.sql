-- 22. Mostrar categorias-filhas com pelo menos um lançamento (INNER JOIN onde ``).

SELECT DISTINCT cat.nome
FROM categoria cat
INNER JOIN lancamento l ON l.id_categoria = cat.id
WHERE cat.id_pai IS NOT NULL;



