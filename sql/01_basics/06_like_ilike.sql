-- 🔹 LIKE
-- Goal: Count how many customers have a first name starting with the letter 'J'
SELECT COUNT(*)
FROM customer
WHERE first_name LIKE 'J%';

-- Goal: Retrieve customers whose first name contains 'er'
SELECT * 
FROM customer
WHERE first_name LIKE '%er%';

-- Goal: Retrieve customers whose first name starts with 'A' and last name does not start with 'B', ordered by last name
SELECT * 
FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;

-- 🔹 ILIKE
-- Goal: Retrieve customers whose first name starts with 'j' and last name starts with 's' (case-insensitive)
SELECT *
FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';