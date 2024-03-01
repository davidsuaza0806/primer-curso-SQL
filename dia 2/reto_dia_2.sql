/*
- Cuantas peliculas hay que contienen la palabra ‘Saga’ en la descripción y en donde el titulo comienza con A o termina con R? 
Use el alias de ‘no_of_movies’.

- Crear una lista de clientes donde el primer nombre contiene ‘ER’ y tienen una ‘A’ como segunda letra. Ordena los resultados 
por el last_name de manera descendente
*/

SELECT COUNT(*) AS no_of_movies FROM film 
WHERE (description LIKE '%Saga%') AND (title LIKE 'A%' OR title LIKE '%R');

SELECT * FROM customer WHERE (first_name LIKE '_A%' AND first_name LIKE '%ER%') ORDER BY last_name DESC;

-- Cuantos pagos hay en donde el monto es 0 o esta entre 3.99 y 7.99 y que han ocurrido en
-- 2020-05-01
SELECT COUNT(*) FROM payment WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99) 
AND payment_date BETWEEN '2020-05-01' AND '2020-05-01 23:59';
