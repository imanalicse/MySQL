-- The CONCAT() function is used to combine two or more strings into a single string.
-- CONCAT(string1, string2, ..., stringN);
SELECT CONCAT('Hello', ' ', 'World') AS greeting; -- Hello World
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;