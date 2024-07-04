-- Best way to test if a row exists in a MySQL table
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

SELECT EXISTS(SELECT * FROM table_name WHERE '....'); -- return true or false

SELECT column_list FROM table_name WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);
SELECT column_list FROM table_name WHERE NOT EXISTS (SELECT column_name FROM table_name WHERE condition);