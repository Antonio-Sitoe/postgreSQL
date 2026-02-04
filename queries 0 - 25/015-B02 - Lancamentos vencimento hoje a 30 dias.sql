-- 2. Lançamentos com vencimento entre hoje e 30 dias à frente.
SELECT *
FROM lancamento
WHERE data_vencimento::date BETWEEN CURRENT_DATE AND (CURRENT_DATE + INTERVAL '30 days')::date
ORDER BY data_vencimento;
