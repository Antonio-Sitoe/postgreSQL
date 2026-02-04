-- 6. Lançamentos criados (data_lancamento) entre a data de inclusão da conta e hoje.
-- Conta específica: id = 1. Ajuste o id conforme necessário.
SELECT l.*
FROM lancamento l
JOIN conta c ON c.id = l.id_conta
WHERE l.id_conta = 1
  AND l.data_lancamento BETWEEN c.data_inclusao AND CURRENT_TIMESTAMP
ORDER BY l.data_lancamento;
