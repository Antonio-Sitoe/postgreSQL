-- 13. Lançamentos com data_lancamento entre a primeira e última inclusão de conta
--     de um cliente (hipotético: contas usadas em lançamentos desse cliente).
-- Cliente: id = 1. Ajuste conforme necessário.
SELECT l.*
FROM lancamento l
WHERE l.data_lancamento BETWEEN (
    SELECT MIN(c.data_inclusao)
    FROM conta c
    JOIN lancamento l2 ON l2.id_conta = c.id
    WHERE l2.id_cliente = 1
  ) AND (
    SELECT MAX(c.data_inclusao)
    FROM conta c
    JOIN lancamento l2 ON l2.id_conta = c.id
    WHERE l2.id_cliente = 1
  )
ORDER BY l.data_lancamento;
