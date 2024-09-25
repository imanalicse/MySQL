-- In this tutorial, you will learn create, drop, and disable a foreign key constraint.
/* A foreign key is a column or group of columns in a table that links to a column or group of columns in another table.
The foreign key places constraints on data in the related tables, which allows MySQL to maintain referential integrity.
 */
-- parent table = referenced table,  child table = referencing table
-- A table can have more than one foreign key where each foreign key references a primary key of the different parent tables.
-- Syntax:

[CONSTRAINT [symbol/constraint_name]] FOREIGN KEY
    [index_name] (col_name, ...)
    REFERENCES parent_table(col_name,...)
    [ON DELETE reference_option]
            [ON UPDATE reference_option]

reference_option:
RESTRICT | CASCADE | SET NULL | NO ACTION | SET DEFAULT