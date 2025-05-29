-- 🔹 MATHEMATICAL OPERATORS

-- Goal: Calculate what percentage the rental rate is of the replacement cost for each film.

SELECT
    title,
    ROUND(rental_rate / replacement_cost, 2) * 100 AS percent_cost
FROM
    film;

-- Output columns:
-- title → The title of the film.
-- percent_cost → The rental rate as a percentage of the replacement cost (rounded to 2 decimals).



-- Goal: Calculate 10% of the replacement cost for each film to represent a deposit amount.

SELECT
    title,
    0.1 * replacement_cost AS deposit
FROM
    film;

-- Output columns:
-- title → The title of the film.
-- deposit → 10% of the replacement cost for the film.



