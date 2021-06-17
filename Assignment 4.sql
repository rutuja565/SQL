
--Arranging Orders Table in Descending order
SELECT * FROM [dbo].[Orders] ORDER BY [Amount] DESC

--Creating Emp_details1 Table
CREATE TABLE Emp_Details1(Emp_no INT,Emp_Name VARCHAR(50),Emp_Salary INT)

INSERT INTO Emp_Details1 VALUES(01,'Pravin',1000)
INSERT INTO Emp_Details1 VALUES (02,'Max',2000)
INSERT INTO Emp_Details1 VALUES(03,'Paulo',1000)

SELECT * FROM Emp_Details1

--Creating Emp_Details2 Table
CREATE TABLE Emp_Details2(Emp_no INT,Emp_Name VARCHAR(50),Emp_Salary INT)

INSERT INTO Emp_Details2 VALUES(01,'Pravin',1000)
INSERT INTO Emp_Details2 VALUES (02,'Max',2000)
INSERT INTO Emp_Details2 VALUES(04,'Ron',2300)
INSERT INTO Emp_Details2 VALUES(05,'Peter',3380)

SELECT * FROM Emp_Details2

-- Union Operator
SELECT * From Emp_Details1
UNION
SELECT * FROM Emp_Details2

-- Union All
SELECT * From Emp_Details1
UNION ALL
SELECT * FROM Emp_Details2

-- Intersect 
SELECT * From Emp_Details1
INTERSECT
SELECT * FROM Emp_Details2

-- Except
SELECT * From Emp_Details1
EXCEPT
SELECT * FROM Emp_Details2

SELECT * From Emp_Details2
EXCEPT
SELECT * FROM Emp_Details1