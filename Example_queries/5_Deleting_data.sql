-- Now, we are going to modify the data in the table

DROP TABLE IF EXISTS student;
CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	major VARCHAR(25) DEFAULT 'undecided'
);

-- Insert some data
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Kate','Sociology');
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Claire','Chemistry');
INSERT INTO student(name) VALUES('Billy');

-- Now the objective is to eliminate the students who doesn't have a degree
-- First, we change the undecided value to NULL, and after that
-- we use "DELETE FROM table" to remove the row.
UPDATE student SET major = NULL WHERE major = 'undecided';
DELETE FROM student WHERE major IS NULL;

-- Trying to remove data that doesn't exist.
-- ERROR:  column "Economy" does not exist
-- DELETE FROM student WHERE major = "Economy";

SELECT * FROM student;