-- 🔹 SELECT
-- Goal: Get last and first names of all actors
SELECT last_name, first_name 
FROM actor;

-- 🔹  SELECT DISTINCT
-- Goal: Retrieve unique rental rates from the film table to see all available pricing options
SELECT DISTINCT rental_rate 
FROM film;

-- 🔹 SELECT COUNT()
-- Goal: Count total payments
SELECT COUNT(amount) 
FROM payment;

-- Goal: Count how many distinct payment amounts exist, useful to know different payment values
SELECT COUNT(DISTINCT amount) 
FROM payment;

-- 🔹 SELECT with WHERE
-- Goal: Retrieve all films where the rental rate is greater than 4 and the replacement cost is at least 19.99
SELECT * 
FROM film 
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

-- Goal: Count films rated 'R' or 'PG-13'
SELECT COUNT(*) 
FROM film 
WHERE rating = 'R' OR rating = 'PG-13';
