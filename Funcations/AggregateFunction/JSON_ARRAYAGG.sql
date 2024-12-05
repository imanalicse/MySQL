/* JSON_ARRAYAGG function combines column values into a JSON array
   MariaDB does not support this function
 */
SELECT JSON_ARRAYAGG(name) AS names_array FROM users; -- ["Alice", "Bob", "Charlie"]

SELECT department_id, JSON_ARRAYAGG(name) AS employees FROM employees GROUP BY department_id;
department_id	employees
1	["Alice", "Bob"]
2	["Charlie", "Dave"]

-- MariaDB equivalent
SELECT CONCAT('[', GROUP_CONCAT(CONCAT('"', customer_email, '"') ORDER BY customer_email), ']') AS json_array FROM shared_s3v3_org_orders;