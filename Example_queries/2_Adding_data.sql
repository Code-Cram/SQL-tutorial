-- You can remove the "--" before the ERROR examples and test them to confirm
-- that the statements really fail. It's a good way to enjoy the knowledge.


-- Create the same table as before:
DROP TABLE IF EXISTS student;
CREATE TABLE student (
	student_id INT PRIMARY KEY,
	name VARCHAR(25),
	major VARCHAR(25)
);

-- Now we are going to add data to the table
-- In human language is: "Insert into the table student this values..."
-- Values are inserted in the same order as the table columns.
-- Strings must be written using single quotes (' ').

INSERT INTO student VALUES(1,'Jack','Biology');
INSERT INTO student VALUES(2,'kate','Sociology');
INSERT INTO student VALUES(3,'Claire','English');
INSERT INTO student VALUES(4,'Jack','Biology');
INSERT INTO student VALUES(5,'Mike','Computer Science');
-- ERROR:  INSERT has more expressions than target columns
-- INSERT INTO student VALUES (6, 'Mery', 'Medicine', 'Example');


-- Also, now we can test if PRIMARY KEY works with some data
-- If we try to insert another row with the same student_id, it will fail.

-- ERROR:  duplicate key value violates unique constraint "student_pkey"
-- INSERT INTO student VALUES (1, 'Mark', 'Science');


-- If we want to add only some atributes we can specify
-- Is important to put the same amount of data
-- If we specify the column names, we only need to insert values for those columns.
INSERT INTO student (student_id, name) VALUES(6,'Billy');

-- ERROR:  INSERT has more expressions than target columns
-- INSERT INTO student (student_id, name) VALUES (6, 'Wilfred', 'Spanish')

-- DML part: selecting data.
-- SELECT retrieves the data, and FROM indicates the table where the data is stored.
-- The asterisk (*) selects all the columns.
SELECT * FROM student;
