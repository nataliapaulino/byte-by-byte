-- 🔹 GROUP BY
-- Goal: Get the total amount paid by each customer, ordered from highest to lowest
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- Goal: Get total amount paid by each customer, grouped by both staff and customer
SELECT staff_id, customer_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;

-- Goal: Get the total payment amount per date, ordered from highest to lowest
SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;
