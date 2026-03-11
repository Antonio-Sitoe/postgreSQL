-- 13. Encontrar contas com mesma agência e conta_corrente duplicada (SELF JOIN `conta`).

SELECT 
  co1.nome as nome1, 
  co1.agencia as agencia1, 
  co2.agencia as agencia2  
FROM conta co1
JOIN conta co2 
ON co1.agencia = co2.agencia
AND co1.conta_corrente = co2.conta_corrente
AND co1.id < co2.id;




