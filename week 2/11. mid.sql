-- q2

select e.first_name, m.first_name, e.manager_id
from employees as e
join employees as m 
	on e.manager_id=m.manager_id
    and e.employee_id != m.employee_id;

-- q4
SELECT DISTINCT salary
FROM employees ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- q5
SELECT department_name, COUNT(*)
FROM employees 
	JOIN departments ON employees.department_id = departments.department_id
GROUP BY employees.department_id;


-- q6
SELECT 
    e.first_name, 
    d.department_name
FROM employees as e
LEFT JOIN departments as d 
	ON e.department_id = d.department_id;

SELECT 
    e.first_name, 
    d.department_name
FROM employees as e
RIGHT JOIN departments as d 
    ON e.department_id = d.department_id;

SELECT 
    e.first_name, 
    d.department_name
FROM employees as e CROSS JOIN departments as d;

-- q7

WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal
    FROM employees
)
SELECT first_name, last_name, salary
FROM employees, avg_salary
WHERE salary > avg_salary.avg_sal;

SELECT AVG(salary) FROM employees;

-- q8
SELECT first_name, last_name, salary
FROM employees
WHERE salary < (
        SELECT salary
        FROM employees
        WHERE first_name = 'Steven' AND last_name = 'King'
);

-- q9
SELECT 
    d.department_name,
    e.first_name AS manager_first_name,
    e.last_name AS manager_last_name
FROM departments d
JOIN employees e
    ON d.manager_id = e.employee_id;

-- q10
SELECT DISTINCT l.city, d.department_name
FROM departments as d
JOIN locations as l
    ON d.location_id = l.location_id;

-- q11
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    department_id INT,
    salary DOUBLE,
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DOUBLE
);
