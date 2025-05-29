-- 🔹 STRING FUNCTIONS

-- Goal: Get the number of characters in each customer's first name.

SELECT
    LENGTH(first_name) AS name_length
FROM
    customer;

-- Output columns:
-- name_length  → The number of characters in the customer's first name.



-- Goal: Display the full name of each customer in uppercase, combining first and last names.

SELECT
    UPPER(first_name) || ' ' || UPPER(last_name) AS full_name
FROM
    customer;

-- Output columns:
-- full_name  → The customer's full name in uppercase (e.g., "MARY SMITH").



-- Goal: Generate a fake email using the customer's first initial and last name, all in lowercase.

SELECT
    LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS customer_email
FROM
    customer;

-- Output columns:
-- customer_email  → A simulated email like "jsmith@gmail.com", all lowercase.
