-- 2. Mostrar pares de categorias irmão (mesmo `id_pai`) — cada par listado uma vez.

SELECT 
  c1.nome AS categoria1,
  c2.nome AS categoria2
FROM categoria c1
JOIN categoria c2 
ON c1.id_pai = c2.id_pai
AND c1.id < c2.id;









