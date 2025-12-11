-- UNION examples:

-- Find a list of employee, client and branch supplier names.
SELECT first_name FROM employee
UNION
SELECT client_name FROM client
UNION 
SELECT supplier_name FROM branch_supplier;

-- Find a list of clients & branch suppliers names and the id of each one
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find the total revenue of the company
SELECT SUM(salary) FROM employee
UNION
SELECT SUM(total_sales) FROM works_with;

SELECT 
(SELECT SUM(salary) FROM employee) +
(SELECT SUM(total_sales) FROM works_with)
AS total_revenue;
