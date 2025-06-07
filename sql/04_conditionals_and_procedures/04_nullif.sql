-- 🔹 NULLIF  
-- Goal: Calculate the ratio between departments A and B, avoiding division by zero.

SELECT (
  SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) /
  NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)
) AS department_ratio
FROM depts;
