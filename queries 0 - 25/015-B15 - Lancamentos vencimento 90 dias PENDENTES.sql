-- 15. Lançamentos com vencimento nos próximos 90 dias e que ainda estejam PENDENTES.
SELECT *
FROM lancamento
WHERE situacao = 'PENDENTE'
  AND data_vencimento::date BETWEEN CURRENT_DATE AND (CURRENT_DATE + INTERVAL '90 days')::date
ORDER BY data_vencimento;
