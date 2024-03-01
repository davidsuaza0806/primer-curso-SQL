/*
- ¿Cuál es el mes con el importe total de pago más elevado (payment amount)? (es un group by)
- ¿Cuál es el día de la semana con el importe total de pago más elevado (payment amount)? (es un group by) (Domingos es el día cero)
- ¿Cual ha sido la mayor cantidad de dinero que un cliente ha pagado en una semana?
*/

-- Para el mes
SELECT 
EXTRACT (month from payment_date),
SUM(amount)
FROM payment
GROUP BY EXTRACT (month from payment_date) ORDER BY SUM(amount) DESC;

-- Para dia de la semana (dow es el campo que indica dia de la semana)
SELECT 
EXTRACT (dow from payment_date),
SUM(amount)
FROM payment
GROUP BY EXTRACT (dow from payment_date) ORDER BY SUM(amount) DESC;

-- Para cliente que mas ha comprado en una semana
SELECT 
customer_id,
EXTRACT (week from payment_date),
SUM(amount)
FROM payment
GROUP BY customer_id,EXTRACT (week from payment_date) ORDER BY SUM(amount) DESC;-- Para la semana
