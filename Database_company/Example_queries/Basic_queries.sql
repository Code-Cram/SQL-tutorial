-- In PostgreSQL you can run queries with Alt + f5

-- Find all employees
SELECT * FROM employee;

-- Find all clients
SELECT * FROM client;

-- Find all employees ordered by salary
SELECT * FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex then name
SELECT * FROM employee
ORDER BY sex, first_name, last_name;

-- Find the first 5 employees in the table
SELECT * FROM employee
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name FROM employee;

-- Find the forename and the surnames of all employees.
-- You can transform the atribute name with AS
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different genders
-- When we want the unique values we can use distinct
SELECT DISTINCT sex FROM employee;
