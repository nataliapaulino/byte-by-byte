-- 🔹 INSERT INTO
-- Goal: Add initial data entries to the account, job, and account_job tables.

-- Insert into account table
INSERT INTO account (username, password, email, created_on)
VALUES
    ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);

-- Insert into job table
INSERT INTO job (job_name)
VALUES
    ('Astronaut');

INSERT INTO job (job_name)
VALUES
    ('President');

-- Insert into account_job table
INSERT INTO account_job (user_id, job_id, hire_date)
VALUES
    (1, 1, CURRENT_TIMESTAMP);
