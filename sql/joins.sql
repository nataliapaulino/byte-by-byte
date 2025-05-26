-- 🔹 INNER JOIN
-- Goal:
-- Retrieve payment information along with the first name of each customer who made a payment.

SELECT
    payment_id,
    payment.customer_id,
    first_name
FROM
    payment
INNER JOIN customer
    ON payment.customer_id = customer.customer_id;

-- Output columns:
-- - payment_id         → The unique ID of each payment.
-- - customer_id        → The ID of the customer who made the payment.
-- - first_name         → The first name of the customer (from the customer table).


-- 🔹 FULL OUTER JOIN
-- Goal: Retrieve all customers and payments, including those without matching records in the other table.
--       This query returns rows where there is no matching customer or no matching payment.

SELECT
    *
FROM
    customer
FULL OUTER JOIN payment
    ON customer.customer_id = payment.customer_id
WHERE
    customer.customer_id IS NULL   -- Customers with no payments
    OR payment.payment_id IS NULL; -- Payments with no customers

-- Output:
-- Rows showing customers without payments and payments without customers.


-- 🔹 LEFT JOIN
-- Goal:
-- Retrieve all films that are **not** present in the inventory.
-- This helps identify which films are currently not available in any store.

SELECT
    film.film_id,
    title,
    inventory_id,
    store_id
FROM
    film
LEFT JOIN inventory
    ON inventory.film_id = film.film_id
WHERE
    inventory.film_id IS NULL;

-- Output columns:
-- - film_id       → The unique ID of the film (from the film table).
-- - title         → The title of the film.
-- - inventory_id  → Will be NULL since we're filtering for films not in inventory.
-- - store_id      → Will also be NULL, as there is no inventory record for these films.
