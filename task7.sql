CREATE VIEW high_salary_employees AS
SELECT id, name, salary
FROM employees where salary>75000;
SELECT * FROM high_salary_employees;
CREATE VIEW department_salaries AS
SELECT d.dept_name, e.name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.id;

SELECT * FROM department_salaries where salary>80000;
CREATE VIEW public_employee_info AS
SELECT name, position
FROM employees;

CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name TEXT,
  salary INTEGER,
  dept_id INTEGER
);

CREATE TABLE departments (
  id INTEGER PRIMARY KEY,
  dept_name TEXT
);

DROP VIEW IF EXISTS high_salary_employees;