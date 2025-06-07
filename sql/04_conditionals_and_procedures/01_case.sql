-- 🔹 CASE Expressions 
-- Goal: Classify customers into Premium, Plus, or Normal based on their customer_id.

SELECT customer_id,
  CASE
    WHEN customer_id <= 100 THEN 'Premium'
    WHEN customer_id BETWEEN 100 AND 200 THEN 'Plus'
    ELSE 'Normal'
  END AS customer_class
FROM customer;


-- Goal: Return specific labels for customer_id values 2 and 5.

SELECT customer_id,
  CASE customer_id
    WHEN 2 THEN 'Winner'
    WHEN 5 THEN 'Second Place'
    ELSE 'Normal'
  END AS raffle_results
FROM customer;


-- 🔹 CASE with Aggregations 
-- -- Goal: Categorize and count the number of films based on their rental rates.

SELECT 
  SUM(
    CASE rental_rate
      WHEN 0.99 THEN 1
      ELSE 0
    END
  ) AS bargains,
  SUM(
    CASE rental_rate
      WHEN 2.99 THEN 1
      ELSE 0
    END
  ) AS regular,
  SUM(
    CASE rental_rate
      WHEN 4.99 THEN 1
      ELSE 0
    END
  ) AS premium
FROM film;


-- Goal: Count the number of films by rating.

SELECT
  SUM(
    CASE rating
      WHEN 'R' THEN 1
      ELSE 0
    END
  ) AS r,
  SUM(
    CASE rating
      WHEN 'PG' THEN 1
      ELSE 0
    END
  ) AS pg,
  SUM(
    CASE rating
      WHEN 'PG-13' THEN 1
      ELSE 0
    END
  ) AS pg13
FROM film;