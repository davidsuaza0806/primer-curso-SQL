
SELECT *, 
EXTRACT (month from payment_date),
TO_CHAR(payment_date,'MM-YYYY')
FROM payment;

-- Otro formato
SELECT *, 
EXTRACT (month from payment_date),
TO_CHAR(payment_date,'MM/YYYY')
FROM payment;

-- Otro formato
SELECT *, 
EXTRACT (month from payment_date),
TO_CHAR(payment_date,'DAY')
FROM payment;

-- Los foramtos se pueden crear (siguiendo las denominaciones de la documentacion)
-- Otro formato
SELECT *, 
EXTRACT (month from payment_date),
TO_CHAR(payment_date,'DAY MONTH YYYY')
FROM payment;

-- Los foramtos se pueden crear (siguiendo las denominaciones de la documentacion)
-- Otro formato
SELECT 
TO_CHAR(payment_date,'DAY MONTH YYYY'),
SUM(amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'DAY MONTH YYYY');

-- Los foramtos se pueden crear (siguiendo las denominaciones de la documentacion)
-- Otro formato
SELECT 
TO_CHAR(payment_date,'DAY, MONTH - YYYY'),
SUM(amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'DAY, MONTH - YYYY');

-- Los foramtos se pueden crear (siguiendo las denominaciones de la documentacion)
-- Otro formato
SELECT 
TO_CHAR(payment_date,'DY, MONTH - YYYY'),
SUM(amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'DY, MONTH - YYYY');


--https://www.postgresql.org/docs/current/functions-formatting.html