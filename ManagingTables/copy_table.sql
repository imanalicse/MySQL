-- Copy table structure
CREATE TABLE new_table LIKE existing_table;

-- Copy table with all record
-- Indexes, primary keys, and other constraints are not copied.
CREATE TABLE new_table AS SELECT * FROM existing_table;