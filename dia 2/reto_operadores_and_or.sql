/*
El MANAGER de soporte requiere una lista de todos los pagos de los compradores 322, 346 y 354,
en donde la cantidad del pago es o menor que $2 o mayor que $10.
*/

SELECT * FROM payment
WHERE customer_id in (322,346,354) AND (amount <2 OR amount>10) 
ORDER BY customer_id ASC, amount DESC ;
