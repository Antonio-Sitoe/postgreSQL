-- 10. Listar categorias que têm subcategorias até 2 níveis (SELF JOIN dupla: c -> c_filha -> c_neta).

SELECT pai.nome as pai, filho.nome as fillho, neto.nome as neto  FROM categoria pai 
LEFT JOIN categoria filho ON filho.id_pai = pai.id
LEFT JOIN categoria neto on neto.id_pai = filho.id











