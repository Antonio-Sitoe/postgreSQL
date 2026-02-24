-- 1. Mostrar todas as **contas** (direita) e os lançamentos correspondentes — incluir contas sem lançamentos (`lancamento RIGHT JOIN conta`).

SELECT c.id, c.nome, l.descricao FROM lancamento l 
RIGHT JOIN conta c ON c.id = l.id_conta
  
SELECT c.id, c.nome, l.id AS lancamento_id, l.valor
FROM lancamento l
RIGHT JOIN conta c ON l.id_conta = c.id;







