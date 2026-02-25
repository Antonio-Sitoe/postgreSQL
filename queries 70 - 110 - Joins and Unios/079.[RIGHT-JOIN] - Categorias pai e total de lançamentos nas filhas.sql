-- 9. Mostrar todas as categorias pai e total de lançamentos nas suas filhas (usar RIGHT JOIN com categoria como tabela à direita).


SELECT pai.id, pai.nome, COUNT(l.id) AS total
FROM lancamento l
RIGHT JOIN categoria filha ON l.id_categoria = filha.id
RIGHT JOIN categoria pai ON filha.id_pai = pai.id
GROUP BY pai.id, pai.nome;

SELECT 
    p.id,
    p.nome,
    SUM(l.valor) AS total_lancamentos
FROM lancamento l
RIGHT JOIN categoria f 
       ON l.id_categoria = f.id
RIGHT JOIN categoria p 
       ON f.id_pai = p.id
WHERE p.id_pai IS NULL
GROUP BY p.id, p.nome
ORDER BY p.nome;



