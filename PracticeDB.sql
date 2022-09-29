             
             -- CREATE TABLE (DDL COMMAND)
             -- Creating two tables STUDENT and PLACEMENT 
             
CREATE TABLE STUDENT (
  Id int,
  RollNo varchar(10),
  Name varchar(255),
  L_Name varchar(255),
  Dept varchar(255)
);

CREATE TABLE PLACEMENT (
  RollNo varchar(10),
  Name varchar(255),
  Dept varchar(255),
  PLACED varchar(255),
  Industry varchar(255)
);

             -- INSERT INTO (DML Command)
             -- inserting the values in for columns of two tables
             
INSERT INTO STUDENT VALUES (1,'18cs01', 'Aakash', null, 'CSE');
INSERT INTO STUDENT VALUES (2,'18cs02', 'Bharath', 'Raj', 'CSE');
INSERT INTO STUDENT VALUES (3,'18cs03', 'Chandru',null, 'CSE');
INSERT INTO STUDENT VALUES (4,'18me01', 'Anil', 'Kumar', 'MECH');
INSERT INTO STUDENT VALUES (5,'18me02', 'Dinesh', 'Babu', 'MECH');
INSERT INTO STUDENT VALUES (6,'18me03', 'Cyril', null,'MECH');


INSERT INTO PLACEMENT VALUES ('18me01', 'Anil', 'MECH', 'Yes', 'Core');
INSERT INTO PLACEMENT VALUES ('18me02', 'Dinesh', 'MECH', 'No', null);
INSERT INTO PLACEMENT VALUES ('18me03', 'Cyril', 'MECH', 'Yes', 'IT');
INSERT INTO PLACEMENT VALUES ('18cs01', 'Aakash', 'CSE', 'Yes', 'IT');
INSERT INTO PLACEMENT VALUES ('18cs02', 'Bharath', 'CSE', 'Yes', 'IT');
INSERT INTO PLACEMENT VALUES ('18cs03', 'Chandru', 'CSE', 'Yes', 'IT');

           -- Adding a column in table STUDENT
           -- ALTER (DDL Command)
           
ALTER TABLE STUDENT
ADD College varchar(255);

           -- SELECT (DQL Command)

/*SELECT * FROM STUDENT;

           -- WHERE (clause)
           -- displaying CSE students  
           
SELECT RollNo, Name, L_Name
FROM STUDENT
WHERE Dept = 'CSE';

           -- NULL
SELECT RollNo, Name
FROM PLACEMENT
WHERE Industry IS NULL;*/

           -- UPDATE (DML COMMAND)
           -- updating college name in table STUDENT for all students
           
UPDATE STUDENT
SET    College = 'GCE';
/*SELECT *
FROM STUDENT; 

           -- AND (operator)
           -- displaying students of MECH who are PLACED
           
SELECT RollNo, Name, Dept
FROM PLACEMENT
WHERE Dept = 'MECH' AND PLACED = 'Yes';

           -- OR (operator)
           -- displaying students who are of CSE or IT industry
           
SELECT RollNo, Name, Dept
FROM PLACEMENT
WHERE Dept = 'CSE' OR Industry = 'IT';

           -- NOT (operator)
           -- displaying students who are not PLACED
           
SELECT RollNo, Name, Dept
FROM PLACEMENT
WHERE NOT PLACED = 'Yes';*/

           -- again updating the table as not PLACED student is PLACED

UPDATE PLACEMENT
SET PLACED = 'Yes', Industry = 'Core'
WHERE Name = 'Dinesh' AND RollNo = '18me02';

           -- JOINS
           
           -- INNER JOIN
           -- combining two tables matching Name column
           
/*SELECT STUDENT.ID, STUDENT.RollNo, STUDENT.Name, STUDENT.L_Name, STUDENT.Dept, STUDENT.College, PLACEMENT.PLACED, PLACEMENT.IndustryType
FROM STUDENT
INNER JOIN PLACEMENT
ON STUDENT.Name = PLACEMENT.Name;

           -- LEFT JOIN

SELECT STUDENT.ID, STUDENT.RollNo, STUDENT.Name, PLACEMENT.PLACED           
FROM STUDENT
LEFT JOIN PLACEMENT
ON STUDENT.Name = PLACEMENT.Name;*/

           -- adding a column on table PLACEMENT
           
ALTER TABLE PLACEMENT
ADD Salary varchar(255);

           -- adding salary package value in Stipend column
           
UPDATE PLACEMENT
SET Salary = '20,000'
WHERE Industry = 'IT';

UPDATE PLACEMENT
SET Salary = '15,000'
WHERE Industry = 'Core';

           -- ORDER BY
           
/*SELECT *
FROM PLACEMENT
ORDER BY Dept ASC

           -- MIN

SELECT MIN(Salary)
FROM PLACEMENT
WHERE PLACED = 'Yes';

           -- MAX

SELECT MAX(Salary)
FROM PLACEMENT
WHERE PLACED = 'Yes';

           -- AVG
           
SELECT AVG(Salary)
FROM PLACEMENT
WHERE PLACED = 'Yes';

           -- COUNT
         
SELECT COUNT(Industry)
FROM PLACEMENT
WHERE Industry = 'IT';

           -- LIKE
         
SELECT *
FROM STUDENT
WHERE Name LIKE '%b%';

           -- IN
SELECT * FROM STUDENT
WHERE RollNo IN ('18cs01', '18me01');

           -- BETWEEN

SELECT *
FROM STUDENT
WHERE Id BETWEEN 3 AND 5;

           -- AS
          
SELECT Industry AS Area
FROM PLACEMENT;

           -- GROUP BY
SELECT Name
FROM STUDENT
WHERE L_Name IS NUll
GROUP BY Name;

           -- ANY
           
SELECT Name
FROM STUDENT
WHERE Dept = ANY
  (SELECT Dept
  FROM PLACEMENT
  WHERE Salary = '20,000');
  
SELECT ID, Name, L_Name FROM STUDENT
UNION
SELECT RollNo, Dept, PLACED FROM PLACEMENT;*/

           -- CASE
           
SELECT Name, L_Name, Dept, College
FROM STUDENT
ORDER BY
(CASE
    WHEN L_Name IS NOT NULL THEN Name
    ELSE L_Name
END);
