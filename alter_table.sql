# Modify multiple column:
# ALTER TABLE can do multiple table alterations in one statement, but MODIFY COLUMN can only work on one column at a time,
# so you need to specify MODIFY COLUMN for each column you want to change:
ALTER TABLE table_name
  MODIFY COLUMN column_name_1 VARCHAR(100),
  MODIFY COLUMN column_name_2 VARCHAR(100);