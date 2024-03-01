/*
Debes ayudar al manager de inventarios a encontrar:
- Cuantas películas hay que contienen la palabra ‘Documentary’ en la descripción ?
- Cuantes clientes hay con un primer nombre que tienen 3 letras  de longitud y que el apellido terminan en ‘X’ o ‘Y’
*/

--Primer reto
SELECT COUNT(*) FROM film 
WHERE description LIKE '%Documentary%';

-- Segundo reto
SELECT COUNT(*) FROM customer  
WHERE (first_name LIKE '___') --selecciona primeros nombres con 3 caracteres
AND (last_name LIKE '%X' OR last_name LIKE '%Y');
