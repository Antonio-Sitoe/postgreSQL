-- 3. Contas incluídas entre duas datas usando BETWEEN.
SELECT *
FROM conta
WHERE data_inclusao BETWEEN '2024-01-01 00:00:00' AND '2024-12-31 23:59:59'
ORDER BY data_inclusao;
