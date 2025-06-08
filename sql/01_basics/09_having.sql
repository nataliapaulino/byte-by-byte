-- 🔹 HAVING
-- Goal: Get total amount paid by each customer who spent more than 100
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

-- Goal: Count customers per store, only where the count is greater than 300
SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;

-- Goal: Get total amount paid by each customer handled by staff_id = 2, where the total is over 200
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 200;
