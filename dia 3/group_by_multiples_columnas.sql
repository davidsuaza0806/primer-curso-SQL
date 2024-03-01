
-- A veces se tiene la necesidad de hacer agrupaciones por mas de una columna, ya que con un solo criterio no es suficiente

SELECT staff_id,customer_id, SUM (amount) AS monto_total,COUNT(*) AS pagos FROM payment
GROUP BY staff_id,customer_id ORDER BY pagos DESC;