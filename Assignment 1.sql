
CREATE TABLE Customer(Customer_id INT,First_name VARCHAR(20),Last_name VARCHAR(20),Email VARCHAR(20),CustAddress VARCHAR(50),
						City VARCHAR(20),c_State VARCHAR(20),Zip INT);

INSERT INTO Customer VALUES(101,'Sachin','Mhatre','sachin@gmail.com','10,Lokhnadwala','Mumbai','Maharashtra',400010)
INSERT INTO Customer VALUES(102,'George','Max','Gmax@gmail.com','1002,victoro building','San Jose','New York',6001501)
INSERT INTO Customer VALUES(103,'Sammy','leo','leosam@gmail.com','14,Max Groumd','San Fransisco','New York',2225012)
INSERT INTO Customer VALUES(104,'Rashi','Arora','rashi@rediffmail.com','68,ChandaniChowk','Delhi','Delhi',415300)
INSERT INTO Customer VALUES(105,'Ginnie','Topaz','Topaz@gmail.com','13,LeoSpace','San Jose','New York',6001501)

SELECT * FROM Customer

SELECT First_name,Last_name FROM Customer

SELECT * FROM Customer WHERE First_name LIKE 'G%' AND City= 'San Jose';