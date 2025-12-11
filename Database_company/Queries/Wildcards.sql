-- Wildcard operators
-- % matches zero or more characters
-- _ matches exactly one character
-- These operators are used with LIKE


-- Find any client's who are an LLC
-- Different versions:
-- Ends with LLC
SELECT * FROM client
WHERE client_name LIKE '%LLC';
-- Starts with LLC
SELECT * FROM client
WHERE client_name LIKE 'LLC%';
-- Contains LLC
SELECT * FROM client
WHERE client_name LIKE '%LLC%';

-- Find any branch supllier who are in the label business
SELECT * FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

-- Find any employee born in October
-- Only works with MySQL
SELECT * FROM employee
WHERE birth_day LIKE '____-10%';
-- PostgresSQL method
SELECT *
FROM employee
WHERE EXTRACT(MONTH FROM birth_day) = 10;
