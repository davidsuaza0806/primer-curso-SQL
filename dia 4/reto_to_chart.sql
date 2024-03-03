--Necesitas sumar los pagos y agruparlos en los siguientes formatos

-- Fri, 24/01/2020 (nombre 3 letras del dia, dia/mes/año)
-- May,2020 (mes tres letras, año)
-- Thu,02:44 (dia de la semana 3 letras, hora, minutos)

-- Primer reto
SELECT
TO_CHAR(payment_date,'Dy,DD/MM/YYYY'),
SUM (amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'Dy,DD/MM/YYYY') ORDER BY SUM (amount) DESC ;

-- Segundo reto
SELECT
TO_CHAR(payment_date,'Mon,YYYY'),
SUM (amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'Mon,YYYY')ORDER BY SUM (amount) DESC;

-- Tercer reto
SELECT --Thu,02:44 (dia de la semana 3 letras, hora, minutos)
TO_CHAR(payment_date,'Dy, HH24:MI'),
SUM (amount)
FROM payment
GROUP BY TO_CHAR(payment_date,'Dy, HH24:MI');
