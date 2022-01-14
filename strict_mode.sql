SET GLOBAL innodb_strict_mode = 0;
SET SESSION innodb_strict_mode = 1;

SET GLOBAL innodb_strict_mode = OFF;
SET SESSION innodb_strict_mode = OFF;
SHOW VARIABLES LIKE 'innodb_strict_mode';
 
SET GLOBAL innodb_strict_mode = ON;
SET SESSION innodb_strict_mode = ON;
SHOW VARIABLES LIKE 'innodb_strict_mode';