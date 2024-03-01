/*
Hay dos competencias entre dos empleados.

1. La primera consiste en saber cual de esos empleados ha realizado el mayor volumen de ventas en un solo dia (en cantidad de dinero)
2. La segunda consiste en saber cual de esos empleados ha realizado ahora el mayor numero de ventas en un solo día, excluyendo los pagos cuyo importe sea igual a cero (amount = 0). (cual vendedor tuvo mas ventas en un solo dia excliyendo las ventas con monto cero).
*/


-- Primer reto 
SELECT staff_id,DATE(payment_date) AS only_date,
COUNT(*) AS conteo_pagos, SUM(amount) AS total_amount FROM payment
GROUP BY staff_id,only_date ORDER BY total_amount DESC;


-- Segundo reto
SELECT staff_id,DATE(payment_date) AS only_date,
COUNT(*) AS conteo_pagos FROM payment
WHERE amount != 0
GROUP BY staff_id,only_date ORDER BY conteo_pagos DESC;
