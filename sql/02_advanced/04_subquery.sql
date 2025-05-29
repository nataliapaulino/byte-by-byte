-- 🔹 SUBQUERY

-- Goal: Retrieve all films whose rental rate is above the average rental rate of all films.

SELECT
    title,
    rental_rate
FROM
    film
WHERE
    rental_rate > (
        SELECT AVG(rental_rate)
        FROM film
    );

-- Output columns:
-- title        → The title of the film.
-- rental_rate  → The rental rate of the film (above average).



-- Goal: Retrieve the films that were rented between 2005-05-29 and 2005-05-30.

SELECT
    film_id,
    title
FROM
    film
WHERE
    film_id IN (
        SELECT inventory.film_id
        FROM rental
        INNER JOIN inventory 
            ON inventory.inventory_id = rental.inventory_id
        WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'
    )
ORDER BY
    film_id;

-- Output columns:
-- film_id  → The ID of the film.
-- title    → The title of the film that was rented in the given date range.



-- Goal: Find customers who have never made a payment greater than 11.

SELECT
    first_name,
    last_name
FROM
    customer AS c
WHERE
    NOT EXISTS (
        SELECT *
        FROM payment AS p
        WHERE p.customer_id = c.customer_id
        AND amount > 11
    );

-- Output columns:
-- first_name  → The first name of the customer.
-- last_name   → The last name of the customer.


