
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id

--Si se incluyen condiciones al QUERY,  pueden ir antes del GROUP BY

SELECT customer_id, SUM(amount) FROM payment WHERE customer_id > 3 -- se hace un filtro antes de la agrupacioin, para de esta manera agrupar los clientes con el id mayor a 3 (y luego obtener el amount total por cliente)
GROUP BY customer_id ORDER BY customer_id;

/*
OBS: La clave para un GROUP BY exitoso es que si una columna NO esta incluida en la función de 
agregacion, en este caso debe estar incluida en la clausula GROUP BY
*/

SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id;

--EJEMPLOS PRACTICA
SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id ORDER BY customer_id;

-- Tambien podemos ordenar por la suma
SELECT customer_id, SUM (amount) AS SUMA FROM payment
GROUP BY customer_id ORDER BY SUMA;

SELECT customer_id, SUM (amount) AS SUMA, MAX(amount) FROM payment
GROUP BY customer_id ORDER BY SUMA;
