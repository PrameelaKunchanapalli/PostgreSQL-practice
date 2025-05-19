CREATE TABLE cars (
brand VARCHAR(200),
model VARCHAR(200),
year INT
);

SELECT * from cars;

INSERT into cars ( brand,model,year )
VALUES ('verna','xyz',2024),
( 'BMW','ABC',1990),
('i20','AAA',2000);

SELECT brand,year FROM cars;

ALTER TABLE cars
ADD color VARCHAR(250);
 
 UPDATE cars 
 SET color = 'yellow' , year=2000
 WHERE model = 'AAA'; 

 ALTER TABLE cars
 ALTER COLUMN model TYPE VARCHAR(5);

 ALTER TABLE cars 
 DROP COLUMN year;

 DELETE from cars 
 WHERE brand ='verna' ;
 
 
 
ALTER table cars
ADD COLUMN price INT

BEGIN;
DROP TABLE cars;

ROLLBACK cars;

ROLLBACK;


CREATE TABLE EMP(
Name VARCHAR(20),
Sal  VARCHAR (20),
Age INT 
);

SELECT * from EMP;

INSERT INTO EMP (Name,Sal,Age)
VALUES ('Prameela', 25000 , 23),
('Mujahid', 25000 ,25 ),
('Manoj', 25000, 22);

SELECT name ,Age FROM EMP;

ALTER table EMP
ADD column company varchar;

UPDATE  EMP
SET company='Qtrams';

UPDATE EMP
SET company='TCS', Sal=50000
WHERE Name='Prameela';

ALTER table EMP
ADD column DOJ VARCHAR;

UPDATE EMP
SET doj= 'April'


UPDATE EMP
SET doj='MAY'
WHERE Name = 'Prameela'



ALTER TABLE EMP
ADD Leaves VARCHAR(20);

UPDATE  EMP
SET Leaves='sick'

UPDATE EMP 
SET Leaves = 'personal'
WHERE Name= 'Manoj'


