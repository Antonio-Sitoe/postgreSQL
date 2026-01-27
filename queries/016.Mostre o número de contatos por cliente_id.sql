-- 12. Mostre o número de contatos por cliente_id.
SELECT COUNT(*) as Quantidade, cliente_id FROM contacto
GROUP BY cliente_id
ORDER BY cliente_id DESC;









