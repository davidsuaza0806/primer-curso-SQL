/*
Como hemos descubierto que en 2020, los dias 28 de abril, 29 y 31  fueron dias con ingresos muy altos, y por esa razón, 
queremos centrarnos solo en estos dias en concreto (se debe filtrar los resultados en función de estos 3 días). 
El reto es encontrar cual es el importe medio de los pagos agrupados por cliente y fecha, además, se debe limitar las
salidas solo a aquellos días (28,29 y 31 ) y clientes con más de un pago. Los resultados deben ordenarse por el importe
medio en orden descendente para que veamos el importe medio de pago más alto para una combinación de cliente y día determinada.
*/

SELECT customer_id,DATE(payment_date) AS only_date,ROUND(AVG(amount),2) AS average, COUNT(*)
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
GROUP BY customer_id,only_date
HAVING COUNT(*)>1
ORDER BY AVG(amount) DESC;

-- OTRA MANERA, LA PRIMER MANERA INCURRE EN MENOS GASTO COMPUTACIONAL PORQUE DE ENTRADA SABEMOS
-- QUE DÍAS QUEREMOS FILTRAR
SELECT customer_id,DATE(payment_date) AS only_date,ROUND(AVG(amount),2) AS average, COUNT(*)
FROM payment
GROUP BY customer_id,only_date
HAVING( 
    DATE(payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
    AND COUNT(*)>1
)
ORDER BY AVG(amount) DESC;
