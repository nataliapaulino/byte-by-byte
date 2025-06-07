-- 🔹 VIEW
-- Goal: Create a view 'customer_info' combining customer names with their address.

CREATE VIEW customer_info AS 
SELECT first_name, last_name, address 
FROM customer
INNER JOIN address
  ON customer.address_id = address.address_id;


-- Goal: Update 'customer_info' to include the 'district' column.

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district 
FROM customer
INNER JOIN address
  ON customer.address_id = address.address_id;


-- Goal: Rename the view 'customer_info' to 'c_info'.

ALTER VIEW customer_info RENAME TO c_info;


-- Goal: Delete the view 'c_info' if it exists.

DROP VIEW IF EXISTS c_info;
