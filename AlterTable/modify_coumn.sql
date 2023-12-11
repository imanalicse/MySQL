ALTER TABLE table_name
    MODIFY COLUMN column_name_1 VARCHAR(255) NOT NULL DEFAULT '',
    MODIFY COLUMN column_name_2 TINYINT(1) NOT NULL DEFAULT 0
;

ALTER TABLE table_name MODIFY COLUMN column_name ENUM('', 'value1','value2') NOT NULL DEFAULT '';