-- 4. Lançamentos ocorridos no último trimestre (exemplo dinâmico).
SELECT *
FROM lancamento
WHERE data_lancamento >= date_trunc('quarter', CURRENT_DATE) - INTERVAL '3 months'
  AND data_lancamento <  date_trunc('quarter', CURRENT_DATE)
ORDER BY data_lancamento;
