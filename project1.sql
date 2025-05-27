CREATE TABLE Qtrams1.siteiq_team (

    id SERIAL PRIMARY KEY,

    name VARCHAR(100),

    role VARCHAR(100),

    salary INT,

    organisation VARCHAR(100)

);
 
 
CREATE TABLE Qtrams2.miyo_team (

    id SERIAL PRIMARY KEY,

    name VARCHAR(100),

    role VARCHAR(100),

    salary INT,

    organisation VARCHAR(100)

);
 
 
CREATE TABLE Qtrams3.devops_team (

    id SERIAL PRIMARY KEY,

    name VARCHAR(100),

    role VARCHAR(100),

    salary INT,

    organisation VARCHAR(100)

);
 
INSERT INTO Qtrams1.siteiq_team (name, role, salary, organisation) VALUES

('keshava', 'teamlead', 80000, 'TechNest Solutions'),

('charan', 'developer', 40000, 'TechNest Solutions'),

('hari', 'backend', 40000, 'TechNest Solutions'),

('durgeesh', 'developer', 50000, 'TechNest Solutions'),

('ravi', 'frontend', 60000, 'TechNest Solutions'),

('arjun', 'devops', 75000, 'UnifiedOps'),

('madhava', 'devops', 75000, 'UnifiedOps');
 
SELECT * FROM Qtrams1.siteiq_team
 
INSERT INTO Qtrams2.miyo_team (name, role, salary, organisation) VALUES

('chandrasekhar', 'teamlead', 70000, 'mira'),

('hariteja', 'dataengineer', 50000, 'invo'),

('venugopal', 'developer', 55000, 'screeners'),

('nandakishore', 'backend', 40000, 'invo label'),

('anil', 'developer', 35000, 'ehr'),

('arjun', 'devops', 75000, 'UnifiedOps'),

('madhava', 'devops', 75000, 'UnifiedOps');
 
SELECT * FROM Qtrams2.miyo_team
 
INSERT INTO Qtrams3.devops_team (name, role, salary, organisation)

VALUES

('arjun', 'devops', 75000, 'UnifiedOps'),

('madhava', 'devops', 75000, 'UnifiedOps'),

('gmk babu', 'teamlead', 80000, 'miyo_label');
 
SELECT * FROM Qtrams3.devops_team
 
SELECT name, role FROM Qtrams2.miyo_team;
 
SELECT * FROM Qtrams3.devops_team WHERE salary > 70000;
 
SELECT SUM(salary) AS total_salary FROM Qtrams1.siteiq_team;
 
SELECT AVG(salary) AS avg_salary FROM Qtrams2.miyo_team;
 
SELECT COUNT(*) FROM Qtrams3.devops_team;
 
SELECT * FROM Qtrams1.siteiq_team WHERE role = 'developer';
 
 
SELECT * FROM Qtrams2.miyo_team WHERE name LIKE 'h%';
 
 
SELECT s.name, s.role, m.organisation

FROM Qtrams1.siteiq_team s

JOIN Qtrams2.miyo_team m ON s.name = m.name;
 
SELECT s.name, s.role, m.organisation AS miyo_org

FROM Qtrams1.siteiq_team s

LEFT JOIN Qtrams2.miyo_team m ON s.name = m.name;
 
 
SELECT s.name, s.role AS siteiq_role, m.role AS miyo_role

FROM Qtrams1.siteiq_team s

RIGHT JOIN Qtrams2.miyo_team m

ON s.name = m.name;
 
SELECT *

FROM Qtrams1.siteiq_team s

FULL OUTER JOIN Qtrams2.miyo_team m

ON s.name = m.name;
 
 
SELECT s.name AS siteiq_name, m.name AS miyo_name

FROM Qtrams1.siteiq_team s

CROSS JOIN Qtrams2.miyo_team m;
 

SELECT name , role FROM qtrams1.siteiq_team

UNION
SELECT name, role FROM qtrams2.miyo_team;



CREATE  VIEW combined_team_view AS
SELECT 
    name,
    role,
    salary * 12 AS annual_salary
FROM Qtrams1.siteiq_team

UNION

SELECT 
    name,
    role,
    salary * 12 AS annual_salary
FROM Qtrams2.miyo_team

UNION

SELECT 
    name,
    role,
    salary * 12 AS annual_salary
FROM Qtrams3.devops_team;


SELECT * FROM combined_team_view;





 
 