/*
El equipo de soporte, requiere una lista de todas las horas de alquiler del cliente con ID 35. 
(no estan pidiendo las horas totales, es decir, no estan pidiendo que se agrupen).

Ademas, el equipo de asistencia, requiere que averigue cual es el cliente con la duración media de alquiler más larga 
*/

-- Creando otro intervalo 
SELECT 
return_date - rental_date -- Esto es un intervalo, pues indican los dias entre fechas de retorno y fecha de renta
FROM rental
WHERE customer_id = 35 ;

-- Creando otro intervalo 
SELECT 
customer_id,
AVG(return_date - rental_date) -- Esto es un intervalo, pues indican los dias entre fechas de retorno y fecha de renta
FROM rental
GROUP BY customer_id ORDER BY AVG(return_date - rental_date) DESC;
