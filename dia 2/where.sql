
SELECT columna_1, columna_2
FROM nombre_tabla 
WHERE condicion_filtrado

-- ejemplo de uso 

SELECT COUNT(*) FROM payment WHERE amount =0; -- Hay 24 pagos en cero
SELECT first_name FROM customer WHERE first_name ='ADAM' OR first_name='BARBARA';
SELECT first_name FROM customer WHERE first_name IN ('ADAM','MARY','BARBARA');