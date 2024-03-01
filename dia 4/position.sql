--La función que SQL provee para la búsqueda de patrones es POSITION

-- Sintaxis
SELECT POSITION (cadena_bascada o símbolo buscado IN nombre_columna_a_buscar) FROM customer;

SELECT 
POSITION('@' IN email),
email
FROM customer;

/*
Sabiendo la posición en la que esta el carácter o la cadena de texto, podemos combinar la función POSITION() con 
funciones como LEFT()  o RIGHT().
*/

SELECT 
LEFT(email, POSITION('@' IN email)-1), 
POSITION('@' IN email),
email
FROM customer;


--Para la busqueda de cadenas

-- Busqueda de cadenas
SELECT -- Extraer el primer nombre del correo electronico a traves de hacer slicing en el apellido
LEFT(email, POSITION(last_name IN email)-2), 
POSITION('@' IN email),
email
FROM customer;
