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

CREATE TABLE products(
     productId INT AUTO_INCREMENT PRIMARY KEY,
     productName varchar(100) not null,
     categoryId INT NOT NULL,
     CONSTRAINT fk_category
         FOREIGN KEY (categoryId)
             REFERENCES categories(categoryId)
             ON UPDATE CASCADE
             ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE products(
     productId INT AUTO_INCREMENT PRIMARY KEY,
     productName varchar(100) not null,
     categoryId INT,
     CONSTRAINT fk_category
         FOREIGN KEY (categoryId)
             REFERENCES categories(categoryId)
             ON UPDATE SET NULL
             ON DELETE SET NULL
)ENGINE=INNODB;



ALTER TABLE tbl_name
    ADD [CONSTRAINT [symbol]] FOREIGN KEY
    [index_name] (col_name, ...)
    REFERENCES tbl_name (col_name,...)
    [ON DELETE reference_option]
            [ON UPDATE reference_option]

ALTER TABLE `product_image`
    ADD CONSTRAINT `FK_product_image_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;


ALTER TABLE tbl_name DROP FOREIGN KEY fk_symbol;

-- Disable/Enable foreign key checks:
SET foreign_key_checks = 0;
SET foreign_key_checks = 1;