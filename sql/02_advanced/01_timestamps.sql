-- 🔹 EXTRACT
-- Goal: Extract the payment date and shows only the month when the payment happened.

SELECT
    EXTRACT(MONTH FROM payment_date) AS pay_month
FROM
    payment;


-- Goal: Retrive how many payments ocurred on a Monday.

SELECT
    COUNT(*)
FROM
    payment
WHERE
    EXTRACT(dow FROM payment_date) = 1;


-- 🔹 TO_CHAR
-- Goal: Convert payment_date to a string formatted as MM/dd/YYYY.

SELECT
    TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM
    payment;


-- Goal: Retrieve the names of the months in which payments occurred.

SELECT
    DISTINCT(TO_CHAR(payment_date, 'Month'))
FROM
    payment;
