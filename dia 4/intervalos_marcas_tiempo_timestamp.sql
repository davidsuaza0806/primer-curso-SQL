--SQL también brinda algunas cosas utiles, cosas como las marcas de tiempo y los intervalos. 
--Pone a disposicion ademas la fecha actual y la hora actual, y hacer operaciones con estas fechas


SELECT CURRENT_DATE,
rental_Date
FROM rental; -- PARA AROOJAR LA FECHA ACTUAL 

SELECT CURRENT_TIMESTAMP, -- PARA ARROJAR FECHA CON HORA
rental_Date
FROM rental;

-- Para crear un intervalo
SELECT CURRENT_TIMESTAMP, -- PARA ARROJAR FECHA CON HORA
CURRENT_TIMESTAMP - rental_Date -- Esto es un intervalo, pues indican los dias entre fechas
FROM rental;

-- Creando otro intervalo 
SELECT CURRENT_TIMESTAMP, -- PARA ARROJAR FECHA CON HORA
return_date - rental_date -- Esto es un intervalo, pues indican los dias entre fechas de retorno y fecha de renta
FROM rental;

-- operaciones entre intervalo 
SELECT CURRENT_TIMESTAMP, -- PARA ARROJAR FECHA CON HORA
EXTRACT(day from return_date - rental_date) -- Esto es un intervalo, pues indican los dias entre fechas de retorno y fecha de renta
FROM rental;

-- operaciones entre intervalo 
SELECT CURRENT_TIMESTAMP, -- PARA ARROJAR FECHA CON HORA
EXTRACT(hour from return_date - rental_date) -- Esto es un intervalo, pues indican los dias entre fechas de retorno y fecha de renta
FROM rental;
