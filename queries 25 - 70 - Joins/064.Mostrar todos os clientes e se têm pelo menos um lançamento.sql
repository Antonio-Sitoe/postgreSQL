-- 12. Mostrar todos os clientes e se têm pelo menos um lançamento (flag boolean).
SELECT 
    c.id,
    c.nome_empresarial,
    EXISTS (
        SELECT 1 
        FROM lancamento l 
        WHERE l.id_cliente = c.id
    ) AS tem_lancamento
FROM cliente c;




