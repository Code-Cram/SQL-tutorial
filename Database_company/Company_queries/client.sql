-- Creating Client table

DROP TABLE IF EXISTS client;
CREATE TABLE client(
	client_id INT PRIMARY KEY,
	client_name VARCHAR(50),
	branch_id INT,
	FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

INSERT INTO client VALUES(400,'Dunmore Highschool',2);
INSERT INTO client VALUES(401,'Lackawana Country',2);
INSERT INTO client VALUES(402,'FedEx',3);
INSERT INTO client VALUES(403,'John Daly Law, LLC',3);
INSERT INTO client VALUES(404,'Scranton Whitepages',2);
INSERT INTO client VALUES(405,'Times Newspaper',3);
INSERT INTO client VALUES(406,'FedEx',2);