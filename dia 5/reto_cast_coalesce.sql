/*
Teniendo en cuenta la base de datos de las peliculas, en la tabla rental (información de las peliculas rentadas) , 
se observa que hay unas fechas de retorno (return_date) que tienen valores nulos (no han sido entregadas aún). 
Y por esto, es que se desea reemplazar dichos valores nulos con la información ‘’ not returned’ 
*/

-- Esta es la base de la consulta
SELECT 
rental_date,
return_date
FROM rental
ORDER BY rental_date DESC;


--Esta es la solución:

SELECT 
rental_date,
COALESCE(CAST(return_date AS VARCHAR),'Not returned')
FROM rental
ORDER BY rental_date DESC;
