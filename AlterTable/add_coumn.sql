ALTER TABLE table_name ADD COLUMN column_name VARCHAR(255) NOT NULL DEFAULT '';

ALTER TABLE table_name
    ADD COLUMN column_name_1 VARCHAR(255) NOT NULL DEFAULT '',
    AND COLUMN column_name_2 TINYINT(1) NOT NULL DEFAULT 0,
    ADD COLUMN column_name_3 ENUM('', 'value1','value2') NOT NULL DEFAULT '';

/*
#To add two or more columns to a table at the same time, you use the following syntax:

ALTER TABLE table
ADD [COLUMN] column_name_1 column_1_definition [FIRST|AFTER existing_column],
ADD [COLUMN] column_name_2 column_2_definition [FIRST|AFTER existing_column],
...;
*/



