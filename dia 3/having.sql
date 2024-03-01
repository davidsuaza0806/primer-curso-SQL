--El having es una clausula usada para filtrar por agregaciones de un GROUP BY
SELECT customer_id, SUM(amount) AS total_sum
FROM payment GROUP BY customer_id HAVING SUM(amount) > 200;

-- Ejemplo
SELECT staff_id,DATE(payment_date) AS only_date,
COUNT(*) AS conteo_pagos FROM payment
WHERE amount != 0
GROUP BY staff_id,only_date 
HAVING COUNT(*)>400
ORDER BY conteo_pagos DESC;


-- Ejemplo
SELECT staff_id,DATE(payment_date) AS only_date,
COUNT(*) AS conteo_pagos FROM payment
WHERE amount != 0
GROUP BY staff_id,only_date 
HAVING COUNT(*)=28 OR COUNT(*) = 29 
ORDER BY conteo_pagos DESC;
