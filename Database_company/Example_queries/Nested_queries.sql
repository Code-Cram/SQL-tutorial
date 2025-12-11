-- Nested queries examples

-- Find names of all employees who have
-- sold over 30000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	-- We have the id of the employee
	SELECT works_with.emp_id FROM works_with
	WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch
-- that Michael Scott manages. Assume you know Michael's ID
SELECT client.client_name FROM client
WHERE client.branch_id IN(
	-- Michael Scott Id = 102 
	SELECT branch.branch_id FROM branch
	WHERE branch.mgr_id = 102
);