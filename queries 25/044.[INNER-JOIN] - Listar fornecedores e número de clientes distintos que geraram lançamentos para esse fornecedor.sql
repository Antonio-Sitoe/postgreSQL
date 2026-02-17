-- O INNER JOIN retorna somente as linhas que possuem correspondência entre as tabelas.
-- Se uma das tabelas não tiver correspondência, o registro é ignorado.
-- É o JOIN mais usado quando queremos combinar informações que realmente se relacionam.
-- Ex.: mostrar clientes que possuem pelo menos um contacto.

-- 17. Listar fornecedores e número de clientes distintos que geraram lançamentos para esse fornecedor (INNER JOIN + COUNT(DISTINCT)).

SELECT f.nome_empresarial, COUNT(DISTINCT l.id_cliente) AS total_clientes
FROM fornecedor f
INNER JOIN lancamento l ON l.id_fornecedor = f.id
GROUP BY f.nome_empresarial;






