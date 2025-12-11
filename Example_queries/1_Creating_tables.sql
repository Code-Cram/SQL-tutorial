-- EXAMPLE SQL
-- Support with SQL_tutorial.txt

-- The statement DROP TABLE deletes an existing table.
-- We include IF EXISTS to avoid errors in case the table does not exist.
-- SQL types (INT, VARCHAR, etc.) define the type of data each column stores.
DROP TABLE student;
CREATE TABLE student(
	student_id INT PRIMARY KEY,
	name VARCHAR(25),
	major VARCHAR(25)
);


-- Alternative way to define the primary key:
-- We can add the SQL types apart of the variable, at the bottom for example
DROP TABLE student;
CREATE TABLE student(
	student_id INT,
	name VARCHAR(25),
	major VARCHAR(25),
	PRIMARY KEY(student_id)
);

-- SQL command to inspect the table structure:
-- With DESCRIBE we can see the types of atributes and if we have primary keys
-- DESCRIBE student;
-- In Pgadmin we need the terminal, but we can visualize the data with "\d student".

-- Now, let's check some differences in the sintax of SQL.
-- It's the same?
DROP TABLE IF EXISTS products;
CREATE TABLE products (
id integer UNIQUE,
name VARCHAR(32) UNIQUE,
price numeric(10,2)
);
-- ERROR:  duplicate key value violates unique constraint "products_name_key"
-- Key (name)=(table) already exists. 

DROP TABLE IF EXISTS products;
CREATE TABLE products (
id integer,
name VARCHAR(32),
price numeric(10,2),
UNIQUE(id, name)
);
-- ERROR:  duplicate key value violates unique constraint "products_id_name_key"
-- Key (id, name)=(2, table) already exists. 

-- The first case verify if id or name are unique
-- The second form verify that the couple of values are unique
INSERT INTO products VALUES (1,'table',100);
INSERT INTO products VALUES (2,'table', 200);
INSERT INTO products VALUES (2,'table', 300);
SELECT * FROM products;
