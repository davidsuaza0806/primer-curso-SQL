SELECT nombre_columnas_consultar(separados por coma) FROM nombre_tabla

-- Usando nomenclatura del putno
SELECT first_name,last_name  -- SELECCIONAR LAS 2 COLUMNAS
	FROM public.actor;

SELECT *  -- SELECCIONAR TODA LA INFORMACION DE LA TABLA ACTOR
	FROM public.actor;

-- Usando la query tool y evitar la nomenclatura del punto
SELECT first_name,last_name  -- SELECCIONAR LAS 2 COLUMNAS
	FROM actor;

SELECT *  -- SELECCIONAR TODA LA INFORMACION DE LA TABLA ACTOR
	FROM actor;
