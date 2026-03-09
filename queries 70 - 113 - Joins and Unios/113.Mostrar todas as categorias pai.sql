-- 8. Mostrar todas as categorias pai (id_pai IS NULL) com a soma dos valores dos 
--   lançamentos de suas subcategorias, incluindo categorias pai sem subcategorias ou lançamentos.

SELECT pai.id, pai.nome, COALESCE(SUM(l.valor), 0) AS soma_valores FROM categoria pai 
 LEFT JOIN categoria filho on filho.id_pai = pai.id
 LEFT JOIN lancamento l ON l.id_categoria = filho.id   
where pai.id_pai IS NULL 
GROUP BY pai.id, pai.nome


