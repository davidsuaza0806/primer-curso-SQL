-- ORDER BY siempre va al final de un query

SELECT first_name,last_name,email FROM customer;

SELECT first_name,last_name FROM actor ORDER BY first_name;-- De manaera ascendente (es valor por defecto)

-- Usando las clausulas ASC y DESC 

SELECT first_name,last_name FROM actor ORDER BY first_name ASC;
-- Aunque es valor por defecto, se especifica para dar
-- mas claridad en el codigo, especialmente cuando ha pasado un periodo de tiempo

SELECT first_name,last_name FROM actor ORDER BY first_name DESC;-- De manaera descendiente


SELECT first_name,last_name FROM actor ORDER BY first_name,last_name -- Se puede organizar por varias columnas 

------------------------------------

SELECT * FROM payment ORDER BY customer_id

SELECT * FROM payment ORDER BY customer_id, amount DESC 
-- Como hay empates en customer_id, organizamos los datos con una segunda 
--columna como criterio y esta procuramos organizarla de manera descendente