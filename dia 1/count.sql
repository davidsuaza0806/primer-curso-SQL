SELECT COUNT(*) FROM table_name; 

-- Manera auxiliar
SELECT COUNT(column_name) FROM table_name; 

SELECT COUNT(*) FROM actor; -- Cuenta el numero de filas en la tabla actor

--OBS: Los valores nulos no son tenidos en cuenta para las funciones de agregacion (conteo, suma, promedio, etc).