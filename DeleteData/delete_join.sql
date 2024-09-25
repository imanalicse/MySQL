-- DELETE with INNER JOIN
DELETE t1,t2 FROM t1
    INNER JOIN t2 ON t2.ref = t1.id
WHERE t1.id = 1;

-- DELETE with LEFT JOIN
-- We can also use the LEFT JOIN clause in the DELETE statement to delete rows in a table (left table) that does not have matching rows in another table (right table).

DELETE T1 FROM T1
    LEFT JOIN T2 ON T1.key = T2.key
WHERE T2.key IS NULL;

-- removes customers who have not placed any orders:
DELETE customers
FROM customers
         LEFT JOIN
     orders ON customers.customerNumber = orders.customerNumber
WHERE
    orderNumber IS NULL;