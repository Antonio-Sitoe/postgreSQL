SELECT cat.id, cat.nome, COUNT(DISTINCT l.id_cliente) AS total_clientes
FROM lancamento l
RIGHT JOIN categoria cat ON l.id_categoria = cat.id
GROUP BY cat.id, cat.nome;