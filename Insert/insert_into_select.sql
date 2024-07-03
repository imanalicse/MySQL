# https://www.mysqltutorial.org/mysql-basics/mysql-insert-into-select/
INSERT INTO table_name(column_list)
SELECT select_list FROM another_table WHERE condition;

SELECT customerNumber, customerName, phone, addressLine1, addressLine2, city, state, postalCode, country
    FROM customers WHERE  country = 'USA' AND state = 'CA';