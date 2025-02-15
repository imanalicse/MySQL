DELETE FROM table_name WHERE condition;
DELETE FROM shared_s3v3_payments WHERE id = 22;

-- delete the first three contacts sorted by first names
DELETE FROM contacts ORDER BY first_name LIMIT 3;

-- delete all rows
DELETE FROM contacts;