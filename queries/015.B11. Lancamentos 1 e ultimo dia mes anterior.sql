-- 11. Lançamentos entre 1º e último dia do mês anterior (versão simples).
SELECT *
FROM lancamento
WHERE data_lancamento::date BETWEEN (date_trunc('month', CURRENT_DATE) - INTERVAL '1 month')::date
                                AND (date_trunc('month', CURRENT_DATE) - INTERVAL '1 day')::date
ORDER BY data_lancamento;
