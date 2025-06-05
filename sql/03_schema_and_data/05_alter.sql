-- 🔹 ALTER TABLE 
-- Goal: Rename the table 'information' to 'new_info'.

ALTER TABLE information
RENAME TO new_info;


-- Goal: Rename the column 'person' to 'people' in the table 'new_info'.

ALTER TABLE new_info
RENAME COLUMN person TO people;


-- Goal: Remove the NOT NULL constraint from the 'people' column in 'new_info'.

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

-- Goal: Remove the 'people' column from the 'new_info' table, including all its data.

ALTER TABLE new_info
DROP COLUMN people;

