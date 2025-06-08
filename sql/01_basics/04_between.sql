-- 🔹 BETWEEN
-- Goal: Count how many payments have an amount between 8 and 9 
SELECT COUNT(*) 
FROM payment
WHERE amount BETWEEN 8 AND 9;

-- Goal: Retrieve all payments made between February 1 and February 14, 2007
SELECT *
FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
