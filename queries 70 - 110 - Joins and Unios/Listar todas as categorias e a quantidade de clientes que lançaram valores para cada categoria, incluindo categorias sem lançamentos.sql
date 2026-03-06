SELECT ca.id,
       ca.nome,
       COUNT(DISTINCT l.id_cliente) AS total_clientes
FROM categoria ca
LEFT JOIN lancamento l ON l.id_categoria = ca.id
GROUP BY ca.id, ca.nome
ORDER BY ca.nome;