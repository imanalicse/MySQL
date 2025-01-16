SET @table_name = 'shared_s3v3_regions';
SET @new_collation = 'utf8mb4_unicode_ci';

-- Generate ALTER statements for each column
SELECT CONCAT(
               'ALTER TABLE ', @table_name, ' MODIFY ',
               COLUMN_NAME, ' ', COLUMN_TYPE, ' COLLATE ', @new_collation, ';'
           ) AS sql_statement
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = @table_name
  AND TABLE_SCHEMA = DATABASE()
  AND COLLATION_NAME != @new_collation;