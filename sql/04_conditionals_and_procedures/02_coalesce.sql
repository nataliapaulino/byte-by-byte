-- 🔹 COALESCE
-- Goal: Calculate the final price by subtracting discount if available, otherwise use 0.

SELECT 
  item,
  (price - COALESCE(discount, 0)) AS final
FROM table;
