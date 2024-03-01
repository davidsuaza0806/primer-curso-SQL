/*
La responsable de soporte (Support manager) y dice que ha habido 6 quejas de clientes sobre sus pagos, y tienes
que averiguar sobre los pagos de estos 6 clientes (customer_id : 12,25,67,93,124,234) y además, las quejas provienen
de pagos con montos de: 4.99,7.99 y 9.99 en enero de 2020
*/

SELECT * FROM payment 
WHERE (customer_id IN (12,25,67,93,124,234)) AND ( amount IN (4.99,7.99,9.99)) AND 
(payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59');

-- Una solucion auxiliar

SELECT * FROM payment 
WHERE (customer_id IN (12,25,67,93,124,234)) AND ( amount IN (4.99,7.99,9.99)) AND 
(payment_date BETWEEN '2020-01-01' AND '2020-02-01'); -- Establece las cero horas del 1 febrero
