-- 🔹 CAST 
-- Goal: Convert 'inventory_id' to text and return its character length.

SELECT 
  CHAR_LENGTH(CAST(inventory_id AS VARCHAR))
FROM rental;
