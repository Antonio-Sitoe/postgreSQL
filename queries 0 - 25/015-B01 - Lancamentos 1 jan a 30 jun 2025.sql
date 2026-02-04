-- 1. Lançamentos entre 1º jan 2025 e 30 jun 2025 (cuidado com timestamps).
-- Usar >= e < para evitar excluir o último dia por causa da hora.
SELECT *
FROM lancamento
WHERE data_lancamento >= '2025-01-01 00:00:00'
  AND data_lancamento <  '2025-07-01 00:00:00'
ORDER BY data_lancamento;
