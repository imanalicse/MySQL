/*
 In MySQL, a derived table (also known as a subquery in the FROM clause) is a temporary result set created
 by a subquery that exists within a larger query. It is called derived because it is derived from a subquery,
 and is treated as if it were a regular table.
 */
 /*
id	region	product	amount
1	North	Phone	100
2	North	Laptop	150
3	South	Phone	200
4	South	Laptop	250
*/
SELECT region, total_sales
FROM (SELECT region, SUM(amount) AS total_sales
      FROM sales
      GROUP BY region) AS derived_table
WHERE total_sales > 200;
/*
region	total_sales
South	450
*/
SELECT dept_salaries.department, dept_salaries.avg_salary
FROM (SELECT department, AVG(salary) AS avg_salary
      FROM employees
               JOIN salaries ON employees.employee_id = salaries.employee_id
      GROUP BY department) AS dept_salaries
WHERE avg_salary > 5500;