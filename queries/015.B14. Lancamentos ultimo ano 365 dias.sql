-- 14. Lançamentos do último ano (365 dias).
SELECT *
FROM lancamento
WHERE data_lancamento >= (CURRENT_DATE - INTERVAL '365 days')::timestamp
  AND data_lancamento <= CURRENT_TIMESTAMP
ORDER BY data_lancamento;
