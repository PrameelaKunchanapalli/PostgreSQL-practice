CREATE TABLE school (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    established_year INT,
    student_count INT
);

INSERT INTO school (name, city, established_year, student_count) VALUES
('satya', 'New York', 1998, 450),
('priya', 'Chicago', 2005, 380),
('preethi', 'San Francisco', 2010, 520),
('lakshmi', 'Boston', 2000, 310),
('satya', 'New York', 1998, 450),
('priya', 'Chicago', 2005, 380),
('preethi', 'San Francisco', 2010, 520),
('lakshmi', 'Boston', 2000, 310),
('devi', 'dubai', 1950, 450),
('janu', 'cannada', 1960, 380),
('swathi', 'Australia', 1910, 520),
('madhu', 'London', 2110, 310);

SELECT * FROM school
ORDER BY student_count;

SELECT * FROM school
ORDER BY student_count DESC;

SELECT * FROM school
LIMIT 3 ;

SELECT * FROM school
LIMIT 10 OFFSET 3;

SELECT MIN(student_count)
FROM school;

SELECT MIN (established_year)
FROM school;

SELECT MIN(name)
FROM school;

SELECT MIN (student_count)AS lowest_student_count
FROM school;

SELECT COUNT (established_year)
FROM school;

SELECT SUM(student_count)FROM school;

SELECT SUM(student_count)
FROM school
WHERE student_count<500;

ALTER table school
ADD COLUMN grade  INT;

UPDATE school
SET grade = 8
WHERE name='priya''satya';

SELECT * FROM school

SELECT AVG (grade) AS average_grade FROM school;
 
SELECT name, AVG(grade) AS avg_grade
FROM school
GROUP BY name;

SELECT * FROM school
WHERE city LIKE '%N%';

SELECT * FROM school
WHERE city LIKE '%n%'

SELECT * FROM school
WHERE city ILIKE '%N%'

SELECT * FROM school
WHERE name LIKE 'priy_';

SELECT * FROM school
WHERE city IN ('New York', 'London');

SELECT * FROM school
WHERE city NOT IN ('New York', 'London');

SELECT * FROM school
WHERE student_count BETWEEN 400 AND 800
ORDER BY student_count;



 
