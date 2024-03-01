SELECT DISTINCT nombre_columna 
FROM nombre_tabla;

-- Permite realizar la distincion por varias columnas (seleccionar registros distintos segun el criterio)

SELECT DISTINCT nombre_columna,nombre_columna_2,nombre_columna_3,etc
FROM nombre_tabla:

-- O mirar los registros completos sin tener datos repetidos
SELECT DISTINCT *
FROM nombre_tabla;


-- Practica
SELECT DISTINCT rating FROM film;

SELECT DISTINCT rating,rental_duration FROM film; -- Seleccion conjunta