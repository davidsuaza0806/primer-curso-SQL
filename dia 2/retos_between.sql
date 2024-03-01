/*
Tu jefe ha descubierto que ha habido algunos pagos defectuosos y ahora es tu trabajo ayudar a averiguar cuantos pagos
se han visto afectados.
La pregunta a responder es: ¿Cuantos pagos se han realizado los días 26 y 27 de enero de 2020, con un importe entre 1.99 y 3.99?
*/

SELECT COUNT(*) FROM payment
WHERE (payment_date BETWEEN '2020-01-26' AND '2020-01-27 23:59') AND (amount BETWEEN 1.99 AND 3.99)
-- Usando formato AÑO-MES-DIA;

-- Manera auxiliar estableciendo el día 28 ya que por defecto pondra las 00:00 (las cero horas)
SELECT COUNT(*) FROM payment
WHERE (payment_date BETWEEN '2020-01-26' AND '2020-01-28') AND (amount BETWEEN 1.99 AND 3.99)
-- Usando formato AÑO-MES-DIA;
