/*
Para usar las clausulas se tienen dos tipo de comodines (wildcards):
_ : representa cualquier caracter
% : cualquier secuencia de caracteres, discrimina entre mayúsculas y minúsculas
*/

SELECT * FROM actor WHERE first_name LIKE 'A%' 
-- Seleccionara todas las columnas en donde
-- el primer nombre comienza por A mayuscula (no importa que hay después de la A mayúscula)


-- Si no queremos tener la característica de discriminar entre mayúsculas y minúsculas, usamos ILIKE


SELECT * FROM actor WHERE first_name ILIKE 'a%' 
-- Seleccionara todas las columnas en donde
-- el primer nombre comienza por a (no importa que hay después de la a. No discrimina entre si empieza por minúscula o mayúscula)

--Si queremos encontrar un patron en especial en una cadena de texto, donde no importe que hay antes del patron o despues del patron

SELECT * FROM actor WHERE first_name LIKE '%A%' 
-- Seleccionara todas las columnas en donde
-- el primer nombre tenga una A mayuscula (no importa que hay después o antes de la A mayúscula)

SELECT * FROM actor WHERE first_name ILIKE '%A%' 
-- Lo mismo que el anterior sin discriminar 
-- mayusculas de minusculas 



--El uso del underscore (guion bajo: _ ) representa un único caracter


SELECT * FROM actor WHERE first_name LIKE '_A%' 
-- Seleccionara todas las columnas en donde
-- el primer nombre puede tener cualquier caracter al inicio, el segundo caracter es una A
-- mayuscula y después de esta A puede seguir lo que sea

SELECT * FROM actor WHERE first_name LIKE '__A%' -- Seleccionara todas las columnas en donde
-- el primer nombre puede tener cualquier caracter en la primera y segunda posición, el tercer caracter es una A
-- mayuscula y después de esta A puede seguir lo que sea. Así sucesivamente vamos añadiendo posiciones
-- con guines bajo.


--IMPORTANTE: NO OLVIDAR EL USO DE LAS NEGACIONES 


SELECT * FROM actor WHERE first_name NOT LIKE '%A%' 
-- Se seleccionan primeros nombres en donde no haya una A incluida



--MAS EJEMPLOS USANDO LIKE

SELECT * FROM film 
WHERE description LIKE '%Drama%' AND title LIKE 'T%'; 
-- Seleccionamos peliculas en donde
-- en la descripcion esta la palabra Drama y que el titulo comienzan por T (no importa que sigue)

SELECT * FROM film 
WHERE description LIKE '%Drama%' AND title LIKE '_T%'; 
-- Seleccionamos peliculas en donde
-- en la descripcion esta la palabra Drama y que en el segundo caracter del titulo tiene una T 


--OBS: Recordar el uso del ilike por si no hay coincidencias con letras mayúsculas y minúsculas