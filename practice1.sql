CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  salary NUMERIC,
  age INT,
  department VARCHAR(50),
  joining_date DATE
);
INSERT INTO employees (name, salary, age, department, joining_date)
VALUES
  ('Aarav Mehta', 60000, 28, 'IT', '2022-03-15'),
  ('Sara Khan', 52000, 25, 'HR', '2021-11-01'),
  ('John Paul', 75000, 32, 'Finance', '2020-08-10'),
  ('Meena Iyer', 48000, 26, 'Marketing', '2023-01-05'),
  ('Rohit Sharma', 85000, 35, 'Management', '2019-06-21'),
  ('Anjali Das', 58000, 29, 'IT', '2022-07-18'),
  ('David Rao', 62000, 30, 'Support', '2023-04-01'),
  ('Sneha Roy', 50000, 27, 'HR', '2021-10-12'),
  ('Karan Kapoor', 90000, 38, 'Management', '2018-02-28'),
  ('Lisa Fernandes', 47000, 24, 'Sales', '2023-05-09'),
  ('Meena Iyer', 48000, 26, 'Marketing', '2023-01-05'),
  ('Rohit Sharma', 85000, 35, 'Management', '2019-06-21'),
  ('Anjali Das', 58000, 29, 'IT', '2022-07-18'),
  ('Aarav Mehta', 60000, 28, 'IT', '2022-03-15'),
  ('Sara Khan', 52000, 25, 'HR', '2021-11-01');
 
 SELECT * FROM employees;
  
 SELECT DISTINCT name FROM employees;

 SELECT * FROM employees
 WHERE department= 'IT';

 SELECT * FROM employees
 WHERE salary < 50000;

 SELECT * FROM employees
 WHERE age BETWEEN 22 AND 28

 SELECT * FROM employees
 WHERE age IS NULL;

 SELECT * FROM employees
 WHERE department IN ('IT','HR', 'SUPPORT');

 SELECT * FROM employees
 WHERE age = 25;

 
 