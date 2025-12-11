-- Defining the same table, but now the variables have constraints.

-- Now, instead of using INT, we are going to use SERIAL or AUTO_INCREMENT
-- SERIAL Postgresql / AUTO_INCREMENT MySQL
-- This feature allows adding data without specifying the id.
-- Now, we have PRIMARY KEY, UNIQUE and NOT NULL.
DROP TABLE IF EXISTS student;
CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	major VARCHAR(25) UNIQUE
);

-- With SERIAL, we don't need to specify the id when inserting data
-- But we have to specify the atributes of the table

-- ERROR:  invalid input syntax for type integer: "Jack"
-- INSERT INTO student VALUES('Jack','Biology');

-- ERROR:  null value in column "name" of relation "student" violates not-null constraint
-- INSERT INTO student(name,major) VALUES(NULL,'Biology');

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Kate','Sociology');
SELECT * FROM student;

-- Complex example to with more constrains:
DROP TABLE IF EXISTS student;
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(100) UNIQUE,
    country VARCHAR(50) DEFAULT 'Spain',
    dept_id INT,
    FOREIGN KEY (dept_id)
        REFERENCES department(id)
        ON DELETE SET NULL
);
