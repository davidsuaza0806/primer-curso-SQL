/*
El manager de Marketing te pide organizar la lista de clientes por la columna last_name. 
Si hay last_name repetidos, si hay empates, entonces desempatar considerando la columna 
first_name también en orden de Z a A (descendente).
*/

SELECT first_name,last_name,email -- Taba clientes reto #1
FROM customer ORDER BY last_name,first_name;

SELECT first_name,last_name,email -- Solución reto #2
FROM customer ORDER BY last_name DESC,first_name DESC;


-- Una manera auxiliar
SELECT first_name,last_name,email 
FROM customer ORDER BY 2 DESC,1 DESC; -- Se indica el numero de la columna, ¡pero NO es una buena practica!
-- Es más recomendable usar el nombre de la columna