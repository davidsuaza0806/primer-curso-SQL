/*
En este reto, solo se dispone de la dirección de correo electronico y el apellido de los clientes 
(no se puede usar otras columnas para el reto).

El reto consiste en extraer el primer nombre de la columna direccion de email, y concatenarla con el apellido.
La concatenación debe ser en la forma ‘Last name, First name’ (Apellido, Nombre).
*/

SELECT 
email,
CONCAT(
	RIGHT (
	LEFT(email, POSITION('@' IN email)-1), -- A la derecha del nombre. apellido, busque 
	
	LENGTH (last_name)
),
	',',
	LEFT(email, POSITION(last_name IN email) -2)   
) AS full_name FROM customer;
