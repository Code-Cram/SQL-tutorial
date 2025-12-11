-- Creating branch table

DROP TABLE IF EXISTS branch;
CREATE TABLE branch(
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(50),
	mgr_id INT,
	mgr_start_date DATE,
	FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);


INSERT INTO branch VALUES (1,'Corporate',100,'2006-02-09');
INSERT INTO branch VALUES (2,'Scranton',102,'1992-04-06');
INSERT INTO branch VALUES (3,'Stamford',106,'1998-02-13');


