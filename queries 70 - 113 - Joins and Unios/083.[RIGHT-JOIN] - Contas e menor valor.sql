SELECT c.id, c.nome, MIN(l.valor) as menor FROM lancamento l
right join conta c on c.id = l.id_conta
group by c.id, c.nome