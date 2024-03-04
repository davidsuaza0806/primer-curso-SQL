/*
Se tienen 3 retos 

- Necesitas averiguar cuantos tiquetes ha vendido en las siguientes categorias:
    - Low price ticket : total_amount < 20000
    - Mid price ticket : total_amount  between 20000 y 150000
    - High price ticket :  total_amount  ≥ 150000

La respuesta con la que se debe ayudar a la compañia es cuantas entradas de alto precio ha vendido la empresa.
*/

--Esta es la solución.

SELECT 
COUNT(*) AS count_category,
--amount,
CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
	WHEN total_amount < 20000 THEN 'Low price ticket'
	WHEN (total_amount>=20000 AND total_amount<150000) THEN 'Mid price ticket' -- menor a 5 minutos  
	ELSE 'High price ticket'
END as category_ticket
FROM bookings
--WHERE (amount=150000)
GROUP BY category_ticket ORDER BY count_category DESC;

/*
Para el segundo reto:

- Encontrar cuantos vuelos han salido en las siguientes temporadas
    - Winter : December, January, Februar
    - Spring: March, April, May
    - Summer: June, July, August
    - Fall: September, October, November
*/   
--Tengo 3 soluciones 
    -- SOLUCION 1
    SELECT 
    COUNT(*) AS count_seasons,
    --amount,
    CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
    	WHEN TO_CHAR(scheduled_departure,'MON') IN ('DEC','JAN','FEB') THEN 'Winter'
    	WHEN TO_CHAR(scheduled_departure,'MON') IN ('MAR','APR','MAY') THEN 'Spring'
    	WHEN TO_CHAR(scheduled_departure,'MON') IN ('JUN','JUL','AUG') THEN 'Summer'
    	ELSE 'Fall'
    	-- WHEN TO_CHAR(scheduled_departure,'MON') IN ('SEP','OCT','NOV') THEN 'Fall'
    END as season_departure
    FROM flights
    --WHERE (amount=150000)
    GROUP BY season_departure ORDER BY count_seasons DESC;
    
    -- SOLUCION 2
    SELECT 
    COUNT(*) AS count_seasons,
    --amount,
    CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
    	WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
    	WHEN EXTRACT(month from scheduled_departure) IN (3,4,5) THEN 'Spring'
    	WHEN EXTRACT(month from scheduled_departure) IN (6,7,8) THEN 'Summer'
    	ELSE 'Fall'
    	-- WHEN TO_CHAR(scheduled_departure,'MON') IN ('SEP','OCT','NOV') THEN 'Fall'
    END as season_departure
    FROM flights
    --WHERE (amount=150000)
    GROUP BY season_departure ORDER BY count_seasons DESC;
    
    -- SOLUCION 3
    SELECT 
    COUNT(*) AS count_seasons,
    --amount,
    CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
    	WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
    	WHEN EXTRACT(month from scheduled_departure) <=5 THEN 'Spring'
    	WHEN EXTRACT(month from scheduled_departure) <=8 THEN 'Summer'
    	ELSE 'Fall'
    	-- WHEN TO_CHAR(scheduled_departure,'MON') IN ('SEP','OCT','NOV') THEN 'Fall'
    END as season_departure
    FROM flights
    --WHERE (amount=150000)
    GROUP BY season_departure ORDER BY count_seasons DESC;

    
/*
Para el tercer reto:

- Volviendo a la base de datos de peliculas: Se necesita crear una lista con las siguientes condiciones.
    - Si las peliculas cuyas calificaciones son ‘PG‘o ‘PG-13’ o l a duración es más de 210 minutos, entonces se deben tener  la categoria ‘Great rating or long (tier 1)’
    - Si la descripción contiene ‘Drama’ y la duración sea mayor a 90 minutos, entonces deben tener la categoria ‘Long drama (tier 2)’
    - Si la descripción contiene ‘Drama’ y la duración es menor o igual a 90 minutos, entonces deben tener la categoria ‘Short drama (tier 3)’
    - Si tenemos la tasa de alquiler baja (Rental_rate) menor que 1 entonces deben tener la categoria ‘Very cheap (tier 4)’
    
    Ahora, luego de tener esta lista,  tenemos un reto: Como filtrar ahora las peliculas que ahora aparecen en uno de esos 4 niveles, si evidentemente no se le han asignado un nivel a ellas.
  */  
    -- SOLUCION TERCER RETO
    SELECT 
    title,
    description,
    rating,
    rental_rate,
    CASE 
    	WHEN rating IN ('PG','PG-13') OR film.length > 210 THEN 'Great rating or long (tier 1)'
    	WHEN description LIKE '%Drama%' AND film.length > 90 THEN 'Long drama (tier 2)'
    	WHEN description LIKE '%Drama%' AND film.length <= 90 THEN 'Short drama (tier 3)'
    	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
    END AS tier
    FROM film
    WHERE CASE 
    	WHEN rating IN ('PG','PG-13') OR film.length > 210 THEN 'Great rating or long (tier 1)'
    	WHEN description LIKE '%Drama%' AND film.length > 90 THEN 'Long drama (tier 2)'
    	WHEN description LIKE '%Drama%' AND film.length <= 90 THEN 'Short drama (tier 3)'
    	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
    END IS NOT NULL ;
    