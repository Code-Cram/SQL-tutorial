-- Find the number of employees
SELECT COUNT(sex) FROM employee;
SELECT COUNT(emp_id) FROM employee;

-- Find the number of female employee born after 1970
SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_day > '1970-01-01';
-- If we need to know who they are those 2 girls instead of 'COUNT' put a '*'

-- Find the average of all employee's salaries
SELECT AVG(salary) FROM employee;

-- Which gender have more salary?
SELECT AVG(salary) FROM employee GROUP BY sex;

-- How much money spend the corporation on salaries?
SELECT SUM(salary) FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT emp_id, SUM(total_sales) FROM works_with
GROUP BY emp_id;

-- Now how much money spend each client 
-- and who is the client who spend more money on our company
SELECT client_id, SUM(total_sales) FROM works_with
GROUP BY client_id
ORDER BY SUM(total_sales) DESC;