-- 5. Lançamentos com data de vencimento entre primeiro e último dia do mês anterior.
SELECT *
FROM lancamento
WHERE data_vencimento::date BETWEEN (date_trunc('month', CURRENT_DATE) - INTERVAL '1 month')::date
                                AND (date_trunc('month', CURRENT_DATE) - INTERVAL '1 day')::date
ORDER BY data_vencimento;
