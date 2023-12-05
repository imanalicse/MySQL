# Modify multiple column:
# ALTER TABLE can do multiple table alterations in one statement, but MODIFY COLUMN can only work on one column at a time,
# so you need to specify MODIFY COLUMN for each column you want to change:
ALTER TABLE table_name
  MODIFY COLUMN column_name_1 VARCHAR(100),
  MODIFY COLUMN column_name_2 VARCHAR(100);

/*
#To add two or more columns to a table at the same time, you use the following syntax:

ALTER TABLE table
ADD [COLUMN] column_name_1 column_1_definition [FIRST|AFTER existing_column],
ADD [COLUMN] column_name_2 column_2_definition [FIRST|AFTER existing_column],
...;
*/

ALTER TABLE shared_s3v3_users ADD COLUMN show_org_dashboard_overview TINYINT(2) NOT NULL DEFAULT 1;
ALTER TABLE shared_s3v3_users ADD COLUMN profile_tour_completion_date DATETIME NULL DEFAULT NULL;

ALTER TABLE table_name
DROP COLUMN column_name_1,
DROP COLUMN column_name_2,




