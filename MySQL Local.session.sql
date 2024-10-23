CREATE TABLE student(
    student_id INT AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    major VARCHAR(15) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

UPDATE student
SET major = 'MAT'
WHERE student_id = 4;

--<> is not equal to
-- for comment

UPDATE student
SET major = 'EEE'
WHERE major = 'undecided';

UPDATE student
SET major = 'CSE & MAT'
WHERE major = 'CSE' OR major ='MAT';


UPDATE student 
SET name = 'Haruka', major = 'BBA'
WHERE student_id = 3;

--DELETE FROM student
--WHERE major= 'CSE & MAT' AND name = 'NABIL';

SELECT name,major
FROM student
WHERE major = 'BBA' OR major ='CS' ;

SELECT *
FROM student
WHERE major <> 'BBA';

SELECT *
FROM student 
WHERE major IN('CS','BBA') AND student_id >=2;




ALTER TABLE student ADD cgpa DECIMAL(3,2);

ALTER TABLE student DROP cgpa;

INSERT INTO student VALUES(1,"ABIR","CS");

INSERT INTO student VALUES(2,'NABIL','CSE');

SELECT * FROM student;

SELECT *
FROM student
LIMIT 3;

INSERT INTO student(student_id,name) VALUES(3, 'baki');

INSERT INTO student(student_id,name) VALUES(4,"saki");

INSERT INTO student(name) VALUES('ryu')



