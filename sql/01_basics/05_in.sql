-- 🔹 IN
-- Goal: Retrieve customers whose first name is John, Jake, or Julie
SELECT * 
FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');

-- Goal: Count payments where the amount is NOT 0.99, 1.98, or 1.99
SELECT COUNT(*) 
FROM payment
WHERE amount NOT IN (0.99, 1.98, 1.99);
-- NOTE: Numeric values are not enclosed in single quotes because the amount column has a numeric datatype

