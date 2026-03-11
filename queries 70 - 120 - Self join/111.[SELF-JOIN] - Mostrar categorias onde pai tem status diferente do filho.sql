-- 24. Mostrar categorias onde pai tem status diferente do filho (SELF JOIN e WHERE c_pai.situacao <> c_filho.situacao).


SELECT cat1.nome as pai,cat1.situacao, cat2.nome as filho,cat2.situacao from categoria cat1
JOIN categoria cat2 ON cat1.id = cat2.id_pai 
AND cat1.situacao <> cat2.situacao






