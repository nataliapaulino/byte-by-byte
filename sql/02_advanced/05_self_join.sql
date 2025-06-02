-- 🔹 SELF JOIN

-- Goal: Find pairs of different films from the same table that have the same length.

SELECT
    f1.title,
    f2.title,
    f1.length
FROM
    film AS f1
INNER JOIN
    film AS f2
    ON f1.film_id != f2.film_id
    AND f1.length = f2.length;

-- Output columns:
-- title (f1)  → Title of the first film.
-- title (f2)  → Title of the second film with the same length.
-- length      → Duration that both films share.
