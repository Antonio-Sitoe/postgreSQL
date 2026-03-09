-- 12. Exibir todas as categorias e média de valor dos lançamentos (AVG), incluindo categorias sem lançamentos.

select cat.id, cat.nome,
AVG(l.valor) as media from lancamento l 
right join categoria cat on l.id_categoria = cat.id
group by cat.id, cat.nome;






