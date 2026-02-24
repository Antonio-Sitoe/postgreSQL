-- Mostrar todas as contas e quantas categorias únicas foram usadas em lançamentos daquela conta
-- 27. Mostrar todas as contas e quantas categorias únicas foram usadas em lançamentos daquela conta.

SELECT co.id, co.nome, COUNT(DISTINCT l.id_categoria) AS categorias_usadas
FROM conta co
LEFT JOIN lancamento l ON l.id_conta = co.id
GROUP BY co.id, co.nome;

