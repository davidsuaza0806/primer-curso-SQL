/*
Tu jefe quiere que averigues cual de los dos empleados, es decir el staff_id es responsable de mas pagos?
Ademas, tu jefe quiere que averigues cual de esos dos empleados es responsable de un importe globar de pago más elevado 
Deberias averiguar como cambiarian esas cifras si no tuvieras en cuenta las cantidades que son iguales a cero
OBS: Solo hay dos empleados
*/

SELECT staff_id, SUM (amount) monto_total, COUNT(*) AS pagos FROM payment
GROUP BY staff_id ORDER BY monto_total DESC;

SELECT staff_id, COUNT(*) AS pagos, SUM (amount) monto_total FROM payment
WHERE amount>0 GROUP BY staff_id ORDER BY monto_total DESC;

-- Tambien podemos ordenar por la suma
SELECT customer_id, SUM (amount) AS SUMA FROM payment
GROUP BY customer_id ORDER BY SUMA;

SELECT customer_id, SUM (amount) AS SUMA, MAX(amount) FROM payment
GROUP BY customer_id ORDER BY SUMA;
