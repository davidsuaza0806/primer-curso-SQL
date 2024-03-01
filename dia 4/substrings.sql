/* Explicacion sintaxis para extraer subcadenas
SUBSTRING(cadena_completa(o columna) from start (indica comienzo de subcadena)      
[for length] (este es un argumento opcional, si no se indica nada, entonces toma desde el comienzo que se indica hasta el final) 
)
Ejemplo: SUBSTRING (email from 2(posicion 2) for 3 (que me tome desde la posicion 2, 3 caracteres) )  

SUBSTRING (email from POSITION('.' IN email) for 3 (que me tome desde la posicion 2, 3 caracteres) )  
*/

-- Logica aplicada de manera inteligente
SELECT 
email,
SUBSTRING (email from POSITION('.' IN email)+1 for LENGTH(last_name) )
FROM customer;