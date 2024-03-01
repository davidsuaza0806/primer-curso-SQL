/*Necesitaras crear una version anonimizada de las direcciones de correo electronico, en la cual se siga la siguiente regla

Debe verse la inicial del correo, seguido por ‘ *** ’ y luego la ultima parte que comienza por @  (la direccion del correo). 

OBS: Todos los correos tienen direccion ‘@sakilacustomer,org’
*/
SELECT 
first_name,
email,
CONCAT (LEFT (first_name,1),'***', RIGHT(email,19)) AS anonimizate_email
FROM customer
;
