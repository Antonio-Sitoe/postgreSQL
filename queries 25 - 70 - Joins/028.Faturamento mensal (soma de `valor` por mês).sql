-- 3. Faturamento mensal (soma de `valor` por mês).

SELECT 
    TO_CHAR(DATE_TRUNC('month', data_lancamento), 'TMMonth') AS mes,
    COUNT(*) AS qtd_lancamentos,
    SUM(valor) AS total_valor
FROM lancamento
GROUP BY DATE_TRUNC('month', data_lancamento)
ORDER BY m



