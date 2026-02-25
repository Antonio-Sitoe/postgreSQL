-- 11. Mostrar todas as contas e o número de fornecedores distintos que tiveram lançamentos na conta.

SELECT c.id, c.nome, COUNT(distinct l.id_fornecedor) as qtdFornecedores FROM lancamento l 
right JOIN conta c on c.id = l.id_conta
group by c.id, c.nome








