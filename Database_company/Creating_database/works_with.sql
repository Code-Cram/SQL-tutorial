-- Creating Works_With table

DROP TABLE IF EXISTS works_with;
CREATE TABLE works_with(
	emp_id INT,
	client_id INT,
	total_sales INT,
	PRIMARY KEY(emp_id,client_id),
	FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
	FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

INSERT INTO works_with VALUES (105,400,55000);
INSERT INTO works_with VALUES (102,401,267000);
INSERT INTO works_with VALUES (108,402,22500);
INSERT INTO works_with VALUES (107,403,5000);
INSERT INTO works_with VALUES (108,403,12000);
INSERT INTO works_with VALUES (105,404,33000);
INSERT INTO works_with VALUES (107,405,26000);
INSERT INTO works_with VALUES (102,406,15000);
INSERT INTO works_with VALUES (105,406,130000);