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

-- Now the objective is to transform "Biology" into "Bio"
-- We use "UPDATE table" where "SET atribute" change the value 
-- and after that we need a restriction, only "Biology" with WHERE
UPDATE student 
SET major = 'Bio'
WHERE major = 'Biology';
-- Besides, this 3 lines of codes is only one. Remember ";"

-- Other example:
UPDATE student SET major = NULL WHERE major = 'undecided';

UPDATE student 
SET major = 'Biochemistry' 
WHERE major = 'Bio' OR major = 'Chemistry';

-- Also, you can change the id:
UPDATE student SET student_id = 123 WHERE student_id = 1;

SELECT * FROM student;