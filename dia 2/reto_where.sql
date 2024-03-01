-- ¿ Cuántos pagos fueron hechos por los compradores con el customer_id=100 ?
SELECT COUNT(*) FROM payment WHERE customer_id =100; -- Hay 24 pagos en cero

-- Cual es el apellido del comprador con primer nombre ERICA ?
SELECT last_name FROM customer WHERE first_name ='ERICA';