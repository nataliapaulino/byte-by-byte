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
