
SELECT 
film_id,
rental_rate AS old_rental_rate,
rental_rate +1 as new_rental_rate -- Se le incrementa 1 dollar a la tasa de renta
FROM film;

SELECT 
film_id,
rental_rate AS old_rental_rate,
ROUND(rental_rate*1.1,2) as new_rental_rate -- Se le incrementa 1 dollar a la tasa de renta
FROM film;

SELECT 
film_id,
rental_rate AS old_rental_rate,
CEILING(rental_rate*1.1)-0.01 as new_rental_rate -- Se le incrementa 1 dollar a la tasa de renta
FROM film;
