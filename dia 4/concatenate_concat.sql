--En SQL, podemos combinar dos cadenas de caracteres usando : columna_1 | |  columna_2   

SELECT 
LEFT (first_name,1) || LEFT(last_name,1) 
email
FROM customer
;

--Otros ejemplos

SELECT 
LEFT (first_name,1) || LEFT(last_name,1) -- SE OBTIENEN LA INICIALES,
first_name,
last_name
FROM customer
;

SELECT 
LEFT (first_name,1)||'.' || LEFT(last_name,1) || '.' ,
first_name,
last_name
FROM customer
;

--Si se desea realizar todo de una manera que abarque multiples concatenaciones, podemos hacer uso de la funcion CONCAT:

-- USANDO LA FUNCION CONCAT 
SELECT 
CONCAT (LEFT (first_name,1),'.',LEFT(last_name,1),'.') ,
first_name,
last_name
FROM customer
;
