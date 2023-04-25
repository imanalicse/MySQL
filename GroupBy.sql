-- A) Simple MySQL GROUP BY --
SELECT status FROM orders GROUP BY status; -- as like as DISTINCT select

--B) GROUP BY with aggregate functions: allow to perform the calculation of set of rows and return a single value
SELECT status, COUNT(*) FROM orders GROUP BY status;

SELECT `status`, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS total
    FROM orders INNER JOIN orderdetails USING(orderNumber) GROUP BY status;

--returns the order numbers and the total amount of each order.
SELECT `orderNumber`, SUM(quantityOrdered * priceEach) AS total  FROM orderdetails GROUP BY orderNumber;

--C) MySQL GROUP BY with expression example
--gets the total sales for each year
SELECT YEAR(orderDate) AS `year`, SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS total
    FROM orders INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
    WHERE `status`='Shipped' GROUP BY YEAR(orderDate);

-- D) Using MySQL GROUP BY with HAVING clause example
SELECT YEAR(orderDate) AS `year`, SUM(priceEach * quantityOrdered) AS total
FROM orders INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
WHERE `status` = 'Shipped'
GROUP BY `year` HAVING `year` > 2003;
-- Note: MySQL support aliasing but not valid in SQL standard

-- The GROUP BY clause vs. DISTINCT clause ----
