--La clausula IN es una manera de simplificar múltiples ‘o’ y resumirlas en una lista

SELECT * FROM customer
WHERE customer_id IN (123,212,323,243,353,432);

--También, si queremos excluir dichos valores de la consulta, podemos usar fácilmente el operador NOT

SELECT * FROM customer
WHERE customer_id NOT IN (123,212,323,243,353,432);



