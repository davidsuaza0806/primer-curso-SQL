-- Reto 1: Crear una lista de los diferentes distritos de donde provienen los clientes 
SELECT DISTINCT district FROM address;

-- Reto 2 ¿Cual es la fecha más lejana de renta ?

SELECT rental_date FROM rental ORDER BY rental_date DESC LIMIT 1; 
-- SELECT * FROM rental ORDER BY rental ASC LIMIT 1; 

-- Reto 3 ¿Cuántas peliculas tiene la compañia?

SELECT COUNT(*) FROM film ; 

-- Reto 4 ¿Cuántos apellidos distintos de los clientes hay?

SELECT COUNT(DISTINCT last_name) FROM customer;