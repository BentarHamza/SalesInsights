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
WHERE sales_qty <= 0;
-- We dont find a negative value in Database 

SELECT count(*) FROM sales.transactions
WHERE sales_amount <= 0;

-- We find '1611' negative value in sales_amount row so we should delete theme to have a consistents values 

DELETE FROM sales.transactions
WHERE sales_amount <= 0;

------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
----- Data Analysis Using SQL 
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

----- 1. What is the revenue by markets ? 

SELECT markets_name, SUM(sales_amount) AS REVENUE
FROM sales.transactions 
INNER JOIN sales.markets
ON markets.markets_code = transactions.market_code
GROUP BY markets.markets_name
ORDER BY REVENUE DESC;

----- 2.What is the sales quantity by markets ? 

SELECT markets_name, SUM(sales_qty) AS SALES_QTY
FROM sales.transactions 
INNER JOIN sales.markets
ON markets.markets_code = transactions.market_code
GROUP BY markets.markets_name
ORDER BY SALES_QTY DESC;

----- 3. What is Revenue of top 5 customers ? 

SELECT custmer_name, SUM(sales_qty) AS SALES_QTY 
FROM sales.transactions 
INNER JOIN sales.customers 
ON customers.customer_code = transactions.customer_code
GROUP BY  customers.custmer_name
ORDER BY SALES_QTY DESC
LIMIT 5 ;

----- 4. What is sales quantities of top 5 customers ? 

SELECT custmer_name, SUM(sales_qty) AS SALES_QTY 
FROM sales.transactions 
INNER JOIN sales.customers 
ON customers.customer_code = transactions.customer_code
GROUP BY  customers.custmer_name
ORDER BY SALES_QTY DESC
LIMIT 5 ;

----- 5. What is Revenue trend ? 

SELECT year ,SUM(sales_amount) 
FROM sales.transactions
INNER JOIN sales.date 
ON transactions.order_date = date.date
GROUP BY date.year;

----- 6. What is profit margin percentage by market ? 

SELECT markets_name, ROUND(SUM(profit_margin/sales_amount), 2) AS PROFIT_MARGIN_PER
FROM sales.transactions 
INNER JOIN sales.markets
ON transactions.market_code = markets.markets_code
GROUP BY markets_name;

----- 7. What is revenue contribution of every maket ? 

SELECT markets_name, ROUND((SUM(sales_amount)/ SUM(SUM(sales_amount)) OVER())* 100,2) 
AS REVENUE_CONTRIBUTION_PERS
FROM sales.transactions 
INNER JOIN sales.markets 
ON transactions.market_code = markets.markets_code
GROUP BY markets_name
ORDER BY REVENUE_CONTRIBUTION_PERS DESC;

----- 8.What is profit margin contribution of every maket ? 

SELECT markets_name, ROUND((SUM(profit_margin)/ SUM(SUM(profit_margin)) OVER())* 100,1) 
AS PROFIT_MARGIN_CONTRIBUTION_PERS
FROM sales.transactions 
INNER JOIN sales.markets 
ON transactions.market_code = markets.markets_code
GROUP BY markets_name
ORDER BY PROFIT_MARGIN_CONTRIBUTION_PERS DESC;

----- 9.What is revenue contribution of every customer ? 

SELECT custmer_name, ROUND((SUM(sales_amount)/ SUM(SUM(sales_amount)) OVER())* 100,2) 
AS REVENUE_CONTRIBUTION_PERS
FROM sales.transactions 
INNER JOIN sales.customers 
ON customers.customer_code = transactions.customer_code
GROUP BY  customers.custmer_name
ORDER BY REVENUE_CONTRIBUTION_PERS DESC;

----- 10.What is revenue contribution of every customer ? 

SELECT custmer_name, ROUND((SUM(profit_margin)/ SUM(SUM(profit_margin)) OVER())* 100,1) 
AS PROFIT_MARGIN_CONTRIBUTION_PERS
FROM sales.transactions 
INNER JOIN sales.customers 
ON customers.customer_code = transactions.customer_code
GROUP BY  customers.custmer_name
ORDER BY PROFIT_MARGIN_CONTRIBUTION_PERS DESC;

---- 11. What is margin trend ?

SELECT year ,SUM(profit_margin) 
FROM sales.transactions
INNER JOIN sales.date 
ON transactions.order_date = date.date
GROUP BY date.year;








