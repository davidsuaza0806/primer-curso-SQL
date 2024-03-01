/*
En este reto, se necesita extraer los cinco ultimos caracteres de las direcciones de correo electronico.

La direccion del email siempre termina en ‘.org’ ¿Como puedes extraer el punto de la dirección de correo?
*/


-- PRIMER RETO
SELECT 
RIGHT(email,5) AS last_five,
email
FROM customer
;

-- Segundo reto
SELECT 
LEFT(RIGHT(email,4),1) AS extract_dot,
email
FROM customer
;
