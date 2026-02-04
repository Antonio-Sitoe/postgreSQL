-- Mostrar clientes cuja nota é maior ou igual a 9
SELECT *
FROM cliente
WHERE nota >= 9;


SELECT nome_empresarial, email, telefone, nota
FROM cliente
WHERE nota >= 9
ORDER BY nota desc;









