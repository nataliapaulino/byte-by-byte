-- 🔹 CREATE TABLE
-- Goal: Create the base structure for a user system, including user accounts, jobs, and their relationships.

-- Table: account
-- Description: Stores user credentials and login metadata.
CREATE TABLE account (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
);

-- Table: job
-- Description: Stores different types of jobs available in the system.
CREATE TABLE job (
    job_id SERIAL PRIMARY KEY,
    job_name VARCHAR(200) UNIQUE NOT NULL
);

-- Table: account_job
-- Description: Associative table linking users to their jobs with hire dates.
CREATE TABLE account_job (
    user_id INTEGER REFERENCES account(user_id),
    job_id INTEGER REFERENCES job(job_id),
    hire_date TIMESTAMP
);