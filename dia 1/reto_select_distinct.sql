/*
La gente del equipo de marqueting desea mirar cuales han sido los diferentes precios pagados en el pasado,
y además para hacerlo más cómodo para ellos, sería mejor observar los datos de manera descendente (del mayor precio pagado al menor)
*/

SELECT DISTINCT amount FROM payment ORDER BY amount DESC
