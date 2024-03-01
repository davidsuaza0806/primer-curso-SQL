
-- Sintaxis clausula WHERE
SELECT columna_1, columna_2
FROM nombre_tabla 
WHERE condicion_filtrado

-- Ejemplo de uso 
SELECT COUNT(*) FROM payment WHERE amount = 0; -- Conteo de los pagos en cero
SELECT first_name FROM customer WHERE first_name ='ADAM' OR first_name='BARBARA';
SELECT first_name FROM customer WHERE first_name IN ('ADAM','MARY','BARBARA');