
--Su sintaxis es simple

COALESCE (columna, columna_auxiliar_1, collumna_auxiliar_2, etc...)


--Pero, también lo que se puede hace es lo siguiente, si no queremos utilizar un valor alternativo de una columna, entonces también podemos simplemente utilizar un valor fijo


COALESCE (columna, valor_fijo_para_reemplazar_nulos)
COALESCE (actual_arrival, '1970-01-01 0:00') -- > Ejemplo real de la taabla flights



--Para hacer lo anterior (reemplazar con un unico valor), se debe tener en cuenta que si queremos realizar eso, necesitamos tener ambos tipos de datos alineados (deben ser los mismos)


SELECT
COALESCE (actual_arrival - scheduled_arrival,'0:00') -- Llenamos nulos con 0:00
FROM flights;
