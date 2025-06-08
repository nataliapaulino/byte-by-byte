-- 🔹 LIMIT
-- Goal: Retrieve the 5 most recent payment records based on payment date
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;

-- Goal: Retrieve the 5 most recent payments with a non-zero amount
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

-- Goal: Retrieve the 5 shortest films based on duration (length in minutes)
SELECT title, length
FROM film
ORDER BY length ASC
LIMIT 5;
