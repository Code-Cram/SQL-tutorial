DROP TABLE IF EXISTS student;
CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	major VARCHAR(25) DEFAULT 'undecided'
);

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Kate','Sociology');
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Claire','Chemistry');
INSERT INTO student(name) VALUES('Billy');

-- The table code is not from the querie.
-- I put it for evade problems.

-- The main objective is to select a specify information 
-- from the student table and in a specific order.

-- In some cases where we are working with more tables
-- we can specify the variables with "student.name, student.major"
-- Also, we can specify the order with DESC and ASC with ORDER BY
SELECT name, major
FROM student
ORDER BY major DESC;

-- More examples:
SELECT * FROM student ORDER BY major, student_id ASC;

-- We can limit the amount of data that return the querie
SELECT *
FROM student
ORDER BY name DESC
LIMIT 3;

-- Now, we can add some conditions to the querie with WHERE
SELECT student.name, student.major
FROM student
WHERE major = 'Biology' OR student.major <> 'Chemistry'
ORDER BY name ASC;

-- We can select information using the data of the table.
SELECT * FROM student
WHERE major IN ('Biology','Chemistry') AND student_id > 2;