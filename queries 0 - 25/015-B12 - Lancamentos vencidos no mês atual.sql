-- 12. Lançamentos vencidos no mês atual.
SELECT *
FROM lancamento
WHERE data_vencimento::date BETWEEN date_trunc('month', CURRENT_DATE)::date
                                AND (date_trunc('month', CURRENT_DATE) + INTERVAL '1 month' - INTERVAL '1 day')::date
ORDER BY data_vencimento;
