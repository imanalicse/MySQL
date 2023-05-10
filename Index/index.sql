CREATE [UNIQUE | FULLTEXT | SPATIAL] INDEX index_name ON table_name (column_name);

CREATE TABLE IF NOT EXISTS contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    UNIQUE KEY unique_email (email)
);

SHOW INDEX FROM table_name;
SHOW INDEX FROM shared_s3v3_payments;

CREATE UNIQUE INDEX index_name  ON table_name(column_name);
CREATE UNIQUE INDEX unique_payment_method_code  ON shared_s3v3_payments(payment_method_code);
ALTER TABLE shared_s3v3_stage_images ADD CONSTRAINT unique_emp_id_and_img_name UNIQUE(emp_id, img_name);

DROP INDEX index_name ON table_name
DROP INDEX `PRIMARY` ON table_name;
DROP INDEX index_name ON table_name;
DROP INDEX unique_payment_method_code ON shared_s3v3_payments;