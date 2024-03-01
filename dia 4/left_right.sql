-- SELECCION DE LOS PRIMERAS 2 LETRAS
SELECT 
LEFT(first_name,2) AS cut_first_name,
first_name
FROM customer
;

-- SELECCION DE LAS ULTIMAS 2 LETRAS
SELECT 
RIGHT(first_name,2) AS cut_first_name,
first_name
FROM customer
;
-- SELECCION/ EXTRACCION DE LA SEGUNDA LETRA INICIAL DEL PRIMER NOMBRE
SELECT 
RIGHT(LEFT(first_name,2),1) AS second_letter,
first_name
FROM customer
;
