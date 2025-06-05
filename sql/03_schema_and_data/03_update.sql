-- 🔹 UPDATE 
-- Goal: Set the last_login field of all accounts to the current timestamp.

UPDATE account
SET last_login = CURRENT_TIMESTAMP;


-- Goal: Set last_login to the same value as created_on for all accounts.

UPDATE account
SET last_login = created_on;


-- Goal: Set the hire_date in account_job to the created_on date from the account table.

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;


-- Goal: Set last_login to the current timestamp and return email, created_on, and last_login.

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;
