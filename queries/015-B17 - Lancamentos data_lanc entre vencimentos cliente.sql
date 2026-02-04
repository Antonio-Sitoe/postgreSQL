-- 17. (e 20.) Lançamentos cujo data_lancamento está entre as datas de vencimento
--     de lançamentos de um cliente (comparar intervalos).
-- Cliente: id = 1. Ajuste conforme necessário.
SELECT l.*
FROM lancamento l
WHERE l.data_lancamento BETWEEN (
    SELECT MIN(data_vencimento) FROM lancamento WHERE id_cliente = 1
  ) AND (
    SELECT MAX(data_vencimento) FROM lancamento WHERE id_cliente = 1
  )
ORDER BY l.data_lancamento;
