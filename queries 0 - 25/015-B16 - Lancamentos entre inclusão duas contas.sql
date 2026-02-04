-- 16. (e 19.) Lançamentos gerados entre as datas de inclusão de duas contas específicas.
-- Contas: id 1 e 2. Ajuste os ids conforme necessário.
SELECT l.*
FROM lancamento l
WHERE l.data_lancamento BETWEEN (
    SELECT MIN(data_inclusao) FROM conta WHERE id IN (1, 2)
  ) AND (
    SELECT MAX(data_inclusao) FROM conta WHERE id IN (1, 2)
  )
ORDER BY l.data_lancamento;
