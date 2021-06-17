
-- CREATING TABLE
CREATE TABLE Orders(Order_id INT,Order_date DATE,Amount INT,Customer_id INT)

-- INSERTING VALUES INTO TABLE
INSERT INTO Orders VALUES(01,'2001-01-01',1000,101)
INSERT INTO Orders VALUES(02,'2002-02-01',3000,102)
INSERT INTO Orders VALUES(03,'2002-05-08',6000,103)
INSERT INTO Orders VALUES(04,'2003-01-01',10000,104)
INSERT INTO Orders VALUES(05,'2004-12-01',12000,105)
INSERT INTO Orders VALUES(06,'2004-10-01',12000,106)

SELECT * FROM Orders

SELECT * FROM  [dbo].[Customer]

SELECT * FROM [dbo].[Orders]

-- INNER JOIN

SELECT C.Customer_id,First_name,Last_name,Order_id,Order_date,Amount
FROM [dbo].[Customer] AS C
INNER JOIN
[dbo].[Orders] AS O
ON
C.Customer_id = O.Customer_id

-- LEFT JOIN

SELECT C.Customer_id,First_name,Last_name,Order_id,Order_date,Amount
FROM [dbo].[Customer] AS C
LEFT JOIN
[dbo].[Orders] AS O
ON
C.Customer_id = O.Customer_id

-- RIGHT JOIN

SELECT C.Customer_id,First_name,Last_name,Order_id,Order_date,Amount
FROM [dbo].[Customer] AS C
RIGHT JOIN
[dbo].[Orders] AS O
ON
C.Customer_id = O.Customer_id

-- UPDATE QUERY

UPDATE Orders SET Amount=100
WHERE Order_id=3

SELECT * FROM Orders