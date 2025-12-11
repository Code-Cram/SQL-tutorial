-- Join examples

-- Find all branches and the names of their managers

-- JOIN
SELECT employee.emp_id, employee.first_name, branch_name 
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN
SELECT employee.emp_id, employee.first_name, branch_name 
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN
SELECT employee.emp_id, employee.first_name, branch_name 
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- FULL JOIN
SELECT employee.emp_id, employee.first_name, branch_name 
FROM employee
FULL JOIN branch
ON employee.emp_id = branch.mgr_id;

-- NATURAL JOIN
SELECT employee.emp_id, employee.first_name, branch_name 
FROM employee
NATURAL JOIN branch;
