/*
Hubo un problema en el sistema de correo electronico de la empresa, de tal forma que con nombres en los que el nombre o el
apellido tienen más de diez caracteres, el correo electronico no se envía. La tarea, en este caso, debe consistir en crear
una lista en la que figuren todos estos clientes (nombre o apellido con mas de diez caracteres ). 
Ademas, depues de encontrar la lista,  arrojar los nombres y apellidos toos en minuscuslas. 
Incluya además en la lista el correo de los clientes
*/

SELECT 
LOWER(first_name) AS first_name,
LOWER(last_name) AS last_name,
LOWER(email) AS email,
LENGTH(email) -- Numero de caracteres en un string
FROM customer
WHERE LENGTH(first_name)>10 OR LENGTH(last_name)>10;
