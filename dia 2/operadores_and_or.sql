SELECT * FROM payment
WHERE amount = 10.99 AND customer_id = 426;

SELECT * FROM payment
WHERE amount = 10.99 OR amount = 9.99;


-- El orden en que se organizan los AND- OR  afectara la lógica del filtro, por lo que es apropiado incluir parentesis
-- para indicar efectivamente los filtros. Aquí aplica la lógica booleana y las leyes de D’ Morgan.

SELECT * FROM payment
WHERE amount = 10.99 OR (amount = 9.99 AND customer_id=426); 

SELECT * FROM payment
WHERE (amount = 10.99 OR amount = 9.99) AND customer_id=426; 

-- En ambos casos, se obtienen resultados diferentes por la manera de agrupar los operadores lógicos