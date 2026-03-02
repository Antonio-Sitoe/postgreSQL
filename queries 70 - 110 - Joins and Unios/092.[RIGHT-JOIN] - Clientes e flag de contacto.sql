-- ## 2️⃣3️⃣ Clientes e flag de contacto
-- 23. Mostrar todos os **clientes** e se possuem contacto (flag TRUE/FALSE) — RIGHT JOIN garantindo todos clientes.
SELECT c.id, c.nome_empresarial,
CASE WHEN COUNT(ct.id) > 0 THEN TRUE ELSE FALSE END AS possui_contacto
FROM contacto ct
RIGHT JOIN cliente c ON ct.cliente_id = c.id
GROUP BY c.id, c.nome_empresarial;





