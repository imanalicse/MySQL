/* GROUP_CONCAT is an aggregate function used to concatenate values from a group into a single string.
It's particularly useful when you want to merge rows from a group into one row.
 */
GROUP_CONCAT([DISTINCT] expression [ORDER BY expression ASC/DESC] [SEPARATOR 'separator'])

SELECT GROUP_CONCAT(name) AS all_names FROM users; -- all_names: Alice,Bob,Charlie
SELECT GROUP_CONCAT(DISTINCT name) AS unique_names FROM users;
SELECT GROUP_CONCAT(name ORDER BY name ASC) AS sorted_names FROM users;
SELECT GROUP_CONCAT(name SEPARATOR '|') AS names_with_pipe FROM users;
SELECT department_id, GROUP_CONCAT(employee_name) AS employees FROM employees GROUP BY department_id;

/* Limitations
Maximum Length: The result of GROUP_CONCAT is limited by the group_concat_max_len system variable (default is 1,024 characters).
You can increase it if needed:
SET SESSION group_concat_max_len = 10000;
 */