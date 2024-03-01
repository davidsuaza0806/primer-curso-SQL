SELECT * FROM payment -- FILTRA LOS VALORES ENTRE 1.99 Y 6.99
WHERE amount BETWEEN 1.99 AND 6.99 -- INCLUYE LOS VALORES DE LOS EXTREMOS

--También puede ser usada para indicar otro rango de valores, negando el rango de valores que se especifican en el BETWEEN, por ejemplo:
SELECT * FROM payment  -- FILTRA LOS VALORES MENORES A 1.99 Y MAYORES 6.99
WHERE amount NOT BETWEEN 1.99 AND 6.99 -- NO INCLUYE LOS VALORES DE LOS EXTREMOS


/*
PARA LAS FECHAS:

OBS: Recordar que hay formatos de fechas con horas, por lo que se debe tener cuidado si tienen la hora incluida, si no se especifica 
la hora de filtrado también, entonces SQL por defecto pondra las cero horas (00:00) y podría ocasionar que no se filtren todos los 
resultados que se necesitan.
*/

SELECT * FROM rental
WHERE rental_date BETWEEN '2005-05-24' AND '2005-05-26 00:00' ORDER BY rental_date DESC
-- Usando formato AÑO-MES-DIA;

SELECT * FROM rental
WHERE rental_date NOT BETWEEN '2005-05-24' AND '2005-05-26 23:59' ORDER BY rental_date DESC
-- Usando formato AÑO-MES-DIA
