-- 2. **Desvio padrão e variância do valor dos lançamentos.**

SELECT 
    AVG(valor) AS media,
    VAR_SAMP(valor) AS variancia,
    STDDEV_SAMP(valor) AS desvio_padrao,
    STDDEV_POP(valor) AS desvio_po
FROM lancamento;










