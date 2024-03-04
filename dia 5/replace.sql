/*
La necesidad de sustituir valores siempre está presente, lo cual siempre sera de utilidad para garantizar de manera
efectiva las transformaciones de las columnas de los datos, para llevarlo a una forma que podemos trabajar y procesar los datos

REPLACE, reemplaza un texto de una cadena en una columna con otra cadena. Sobre su sintaxis
*/

REPLACE (columna donde se trabajara, valor a reemplazar, nuevo valor);
REPLACE (flight_no, 'PG', 'FL'); --> Ejemplo real
REPLACE (flight_no, 'PG', ''); --> Reemplaza 'PG' con nada (esapacio en blanco '') 


SELECT
REPLACE(passenger_id,' ', '') --SE REEEMPLAZA UN ESPACIO EN BLANCO CON UN ESPACIO VACIO
FROM tickets;

-- Una vez correigo el espacio, se puede convertir a un entero!
SELECT
CAST(REPLACE(passenger_id,' ', '')AS BIGINT) --SE REEEMPLAZA UN ESPACIO EN BLANCO CON UN ESPACIO VACIO
FROM tickets;
