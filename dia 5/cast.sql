/*
Cambiar el tipo de datos de una columna concreta, resulta muy útil en muchos casos. Es el analogo al .astype() de python.

CAST, cambia el tipo de dato de un valor.

Su sintaxis es simple 
*/

CAST(valor o columna a cambiar AS tipo de dato al que queremos cambiar)
CAST(scheduled_arrival AS VARCHAR) --> Ejemplo real
CAST(scheduled_arrival AS DATE) --> Ejemplo real (le quita la hora)


--OBS: Tener cuidado con los tipos de dato que se van a convertir, por ejemplo no es posible convertir ‘ABC’ en un tipo de dato numerico.


SELECT
COALESCE (CAST(actual_arrival - scheduled_arrival AS VARCHAR),'not arrieved') -- Llenamos nulos con 0:00
FROM flights;

-- CAMBIANDO TIPOS DE DATOS
SELECT
LENGTH(CAST(actual_arrival  AS VARCHAR)) 
FROM flights;
