/*
En este reto, se debera crear de nuevo una version anonimizada de las direcciones de correo electronico, teniendo en 
cuenta las siguientes indicaciones:

1 una lista con los emails anonimizados, empezando por la priema letra del nombre, seguido de ‘***’ seguido de ., luego seguido de la primer letra del aapellido, sseguido por ‘***’ y finalmente con la extension del correo ‘@sakilacustomer.org
2 Para el segundo reto, se desea anonimizar nuevamente los correos, pero con una dificultad extra, ahora el patron a seguir es: Se empieza por ‘***’ seguido del ultimo caracter del nombre, seguido del punto, seguido del primer caracter del apellido, seguido de ‘***’ y finalmente con la extension del correo ‘@sakilacustomer.org.
*/

--SOLUCION AL PRIMER REQUERIMIENTO:

--Esta es la base del query
SELECT 
email,
LEFT(first_name,1),
SUBSTRING (email from POSITION('.' IN email) for 2 ),
SUBSTRING (email from POSITION('@' IN email)  )
FROM customer;

-- Esta es la solucion
SELECT
CONCAT(
LEFT(first_name,1),
'***',
SUBSTRING (email from POSITION('.' IN email) for 2 ),
'***',
SUBSTRING (email from POSITION('@' IN email)  )

)
email
FROM customer:

--SOLUCION AL SEGUNDO REQUERIMIENTO:

--Esta es la base del query
SELECT 
email,
RIGHT(first_name,1),
SUBSTRING (email from POSITION('.' IN email) for 2 ),
SUBSTRING (email from POSITION('@' IN email)  )
FROM customer;

-- Solucion
SELECT
CONCAT(
'***',
RIGHT(first_name,1),
SUBSTRING (email from POSITION('.' IN email) for 2 ),
'***',
SUBSTRING (email from POSITION('@' IN email)  )

)
email
FROM customer;