
USE Assignment
SELECT * FROM Orders

-- AVERAGE
SELECT AVG(Amount) AS Average_Amount FROM Orders

-- MINIMUM
SELECT MIN(Amount) AS Minimum_Amount FROM Orders

-- MAXIMUM
SELECT MAX(Amount) AS Maximum_Amount From Orders

-- User-Defined Function
CREATE FUNCTION MultiplyByTen ( @num INT)
RETURNS INT AS
BEGIN
	SET @num = @num * 10
	RETURN @num
END

SELECT [Order_id],[Customer_id],dbo.MultiplyByTen(Amount) AS MultiplyBy_10 From Orders

-- case statement

SELECT [Order_id],[Customer_id],[Amount],
CASE
	WHEN [Amount] > 10000 THEN 'Greater Than 10000'
	--WHEN [Amount] = 3000 THEN 'Greater Than 3000'
	When [Amount] < 10000 THEN 'Less Than 10000'
	WHEN [Amount] = 10000 THEN ' Amount equal to 10000'
	ELSE 'Not Specified'
END AS AmountCase
FROM Orders
