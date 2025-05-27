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


-- Goal:
-- Retrieve the email of customers who live in the district "California".

SELECT
    district,
    email
FROM
    customer
INNER JOIN address
    ON customer.address_id = address.address_id
WHERE
    address.district = 'California';

-- Output columns:
-- - district     → The district from the address table (filtered to 'California').
-- - email        → The email of the customer.


-- Goal:
-- Retrieve the titles of all films featuring the actor Nick Wahlberg.

SELECT
    title,
    first_name,
    last_name
FROM
    actor
INNER JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
INNER JOIN film
    ON film.film_id = film_actor.film_id
WHERE
    actor.first_name = 'Nick'
    AND actor.last_name = 'Wahlberg';

-- Output columns:
-- - title         → The title of the film.
-- - first_name    → The actor's first name (always 'Nick').
-- - last_name     → The actor's last name (always 'Wahlberg').


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
