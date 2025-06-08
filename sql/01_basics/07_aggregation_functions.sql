-- 🔹 Aggregation Functions
-- Goal: Get the lowest replacement cost among all films
SELECT MIN(replacement_cost)
FROM film;

-- Goal: Get both the highest and lowest replacement cost values
SELECT MAX(replacement_cost), MIN(replacement_cost)
FROM film;

-- Goal: Get the average replacement cost, rounded to 2 decimal places
SELECT ROUND(AVG(replacement_cost), 2)
FROM film;
