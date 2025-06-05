-- 🔹 DELETE
-- Goal: Delete the job with the name 'Cowboy' and return its ID and name.

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;