
-- Q2. Find departments that have no employees.

SELECT
    d.id AS department_id,
    d.name AS department_name
FROM departments d
LEFT JOIN employees e
    ON d.id = e.dept_id
WHERE e.id IS NULL;
