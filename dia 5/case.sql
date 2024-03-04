--Ahora se tiene la practica, trabajando con la base de datos de los vuelos


SELECT 
actual_departure-scheduled_departure,-- Se crea un intervalo con actual_departure-scheduled_departure
CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
	WHEN actual_departure IS NULL THEN 'No departure time'
	WHEN actual_departure-scheduled_departure < '00:05' THEN 'On time' -- menor a 5 minutos
	WHEN actual_departure-scheduled_departure < '01:00' THEN 'A little bit late' -- (es una hora tarde)  
	ELSE 'Very Late'
END
FROM flights;

-- Una vez generada la consulta, podemos utilizar agrupaciones
SELECT 
COUNT(*) AS flights,
CASE -- Para mirar cuanto se retrasan los vuelos (un vuelo es puntual si llega con menos de 5 minutos de retraso)
	WHEN actual_departure IS NULL THEN 'No departure time'
	WHEN actual_departure-scheduled_departure < '00:05' THEN 'On time' -- menor a 5 minutos
	WHEN actual_departure-scheduled_departure < '01:00' THEN 'A little bit late' -- (es una hora tarde)  
	ELSE 'Very Late'
END as is_late
FROM flights
GROUP BY is_late ;
