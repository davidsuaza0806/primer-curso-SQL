
-- Preparacion del codigo 
SELECT 
rating,
CASE
WHEN rating IN ('PG','G') THEN 1 -- Estamos haciendo el count, este es el truco, si cumple la condicion le pone 1
ELSE 0 --Y luego, todos los demas valores tendran cero (o sea que contamos los casos 'PG' y 'G')
END
FROM film ;

-- Acá esta la ejecucion del SUM con el CASE 
SELECT 
-- rating, Esta columna no puede ir, ya que nos pondra todas las categorias, mientras que sum(case()) nos dare unicamente un numero
SUM(CASE
WHEN rating IN ('PG','G') THEN 1 -- Estamos haciendo el count, este es el truco, si cumple la condicion le pone 1
ELSE 0 --Y luego, todos los demas valores tendran cero (o sea que contamos los casos 'PG' y 'G' solamente)
END) AS no_of_ratings_with_g_or_pg
FROM film ;


--Esta es una manera de aplicar un PIVOT TABLE sencillo, usando la técnica SUM ( CASE() )


SELECT 
SUM(CASE WHEN rating ='G' THEN 1 ELSE 0 END) AS "G",
SUM(CASE WHEN rating ='R' THEN 1 ELSE 0 END) AS "R",
SUM(CASE WHEN rating ='NC-17' THEN 1 ELSE 0 END) AS "NC-17",
SUM(CASE WHEN rating ='PG-13' THEN 1 ELSE 0 END) AS "PG-13",
SUM(CASE WHEN rating ='PG' THEN 1 ELSE 0 END) AS "PG"
FROM film ;
