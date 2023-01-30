---Data Cleaning using SQL 


----Knowing the numbers of Transactions in our database 
SELECT count(*) FROM sales.transactions;
----Result 150283 ---------------------------------------
SELECT * FROM sales.transactions WHERE market_code = "Mark001";

SELECT * FROM sales.transactions WHERE currency = "USD";
--3emeOperation How can we show transactions in 2020 ? 
-----------------we have a date table so we can perform a joint to have year information ---------------
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date;
--4emeOperation We want to know total revenue in this year 
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date;
---986565766----
--5emeOperation We want to know total revenue in this year in Chennai
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date AND sales.transactions.market_code = "mark001";
--18227503---
--6emeOperation We want to know the distinct products in Chennai 
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code ="Mark001";

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
/* this project is created with data in india and i will try to modify data in order to have a
simulation of bussiness in France. 
*/
UPDATE sales.transactions
SET sales_amount = sales_amount * 0.011 
WHERE currency = "INR"; 

UPDATE sales.transactions 
SET currency = "EURO" 
WHERE currency = "INR";

UPDATE sales.transactions 
SET currency = 'USD' 
WHERE currency = 'USD\r';

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- We do Exploration and data cleaning in MySQL
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- 1. Looking for inconsistents values

SELECT * FROM sales.transactions
WHERE sales_qty <= 0

-- 2. 



