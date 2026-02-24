-- 2. Exibir todas as **categorias** (direita) e os lançamentos associados — incluir categorias sem lançamentos (`lancamento RIGHT JOIN categoria`).

SELECT cat.id, cat.nome, l.valor, l.descricao from lancamento l
right join categoria cat on cat.id = l.id_categoria







