-- Extraer el dia de las fechas que tenemos
SELECT 
EXTRACT (DAY from rental_date)
FROM rental;


-- Realizar la agrupación para dar respuesta a la petición que nos hacen
SELECT 
EXTRACT (DAY from rental_date),
COUNT(*)
FROM rental
GROUP BY EXTRACT (DAY from rental_date) ORDER BY COUNT(*) DESC;

-- Realizar la agrupación por mes para dar respuesta a la petición que nos hacen
SELECT 
EXTRACT (month from rental_date),
COUNT(*)
FROM rental
GROUP BY EXTRACT (month from rental_date) ORDER BY COUNT(*) DESC;