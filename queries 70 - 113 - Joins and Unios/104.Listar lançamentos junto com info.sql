-- 26. Listar lançamentos junto com informações da categoria e do cliente, filtrando apenas por uma categoria específica.

SELECT c.nome_empresarial, cat.nome as categoria, l.valor, l.descricao FROM lancamento l 
INNER JOIN cliente c ON c.id = l.id_cliente
INNER JOIN categoria cat ON cat.id = l.id_categoria
WHERE cat.nome = 'Vendas de Produtos'









