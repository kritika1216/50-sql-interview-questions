
-- Q1. Return all employees along with their department name,
-- including employees who have no department.

SELECT
    e.name AS employee_name,
    d.name AS department_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.id;
