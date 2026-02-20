    --  2. Mostrar lançamentos pagos (`situacao = 'PAGO'`) com ]o nome da conta (INNER JOIN `lancamento`→`conta`).

SELECT c.nome,lanc.* FROM lancamento lanc
INNER JOIN conta c ON c.id = lanc.id_conta
WHERE lanc.situacao = 'PAGO'





    
  



