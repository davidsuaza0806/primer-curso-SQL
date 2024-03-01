/*
Unas de las funciones de cadena más comunes  son saber la longitud de una cadena, convertir todo en minuscula o mayusculas.
*/

SELECT 
UPPER(email) AS email_upper,
LOWER(email) AS email_lower,
email,
LENGTH(email) -- Numero de caracteres en un string
FROM customer
WHERE LENGTH(email)<30;

--Si quiere consultar más acerca de las funciones, consultar: https://www.postgresql.org/docs/8.1/functions.html