-- 🔹 ORDER BY
-- Goal: Retrieve all customer data, sorted by store ID in ascending order
SELECT * 
FROM customer
ORDER BY store_id;

-- Goal: Retrieve store ID, first name, and last name of customers, sorted by store ID (descending), then by first name (ascending)
SELECT store_id, first_name, last_name
FROM customer
ORDER BY store_id DESC, first_name ASC;
