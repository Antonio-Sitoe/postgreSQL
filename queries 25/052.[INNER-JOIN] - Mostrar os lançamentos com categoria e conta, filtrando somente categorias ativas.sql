-- 7. Mostrar os lançamentos com categoria e conta, filtrando somente categorias ativas (INNER JOIN).

SELECT l.id, l.valor, cat.nome AS categoria, c.nome AS conta FROM lancamento l
INNER JOIN categoria cat ON cat.id = l.id_categoria
INNER JOIN conta c ON c.id = l.id_conta
where cat.situacao = 'ATIVO'


SELECT l.id, l.valor, cat.nome AS categoria, co.nome AS conta
FROM lancamento l
INNER JOIN categoria cat ON l.id_categoria = cat.id
INNER JOIN conta co ON l.id_conta = co.id
WHERE cat.situacao = 'ATIVO';




