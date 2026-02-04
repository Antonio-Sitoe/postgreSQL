-- 9. Lançamentos com parcelas cujo vencimento ocorra dentro de 7 a 14 dias.
SELECT *
FROM lancamento
WHERE data_vencimento::date BETWEEN (CURRENT_DATE + INTERVAL '7 days')::date
                                AND (CURRENT_DATE + INTERVAL '14 days')::date
ORDER BY data_vencimento;
