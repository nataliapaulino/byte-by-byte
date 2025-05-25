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
