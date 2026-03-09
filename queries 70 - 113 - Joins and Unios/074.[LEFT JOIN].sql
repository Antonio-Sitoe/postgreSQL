  -- 2. Listar todos os lançamentos com o nome da conta (`conta.nome`) e nome da categoria.

SELECT l.id, c.nome as conta, cat.nome as categoria, l.descricao, l.valor FROM lancamento l
LEFT JOIN conta c on c.id = l.id_conta
LEFT JOIN categoria cat on cat.id = l.id_categoria

SELECT l.id, co.nome AS conta, ca.nome AS categoria
FROM lancamento l
INNER JOIN conta co ON co.id = l.id_conta
INNER JOIN categoria ca ON ca.id = l.id_categoria;






