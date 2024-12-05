/* JSON_OBJECTAGG() function is useful for generating JSON objects directly from query results,
   making it a powerful tool for creating structured JSON data.
 */
-- JSON_OBJECTAGG(key, value);
-- key: The column or expression to use as the keys in the JSON object.
-- value: The column or expression to use as the values in the JSON object.

SELECT JSON_OBJECTAGG(id, name) AS result FROM employees;
/*
{
  "1": "Alice",
  "2": "Bob",
  "3": "Charlie"
}
 */

SELECT JSON_OBJECT(
               'department', department_id,
               'employees', JSON_OBJECTAGG(id, name)
           ) AS department_json
FROM employees
GROUP BY department_id;
/*
 {
  "department": 1,
  "employees": {
    "1": "Alice",
    "2": "Bob"
  }
}
 */
-- Use case: Generate JSON data for APIs or reports: