CREATE TABLE IF NOT EXISTS payments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    uuid CHAR(36) NOT NULL DEFAULT (UUID()) UNIQUE,
   `order_id` INT(11),
   `payment_method_name` VARCHAR(255) NULL DEFAULT '', -- secure-pay, after-apy, paypal
   `payment_reference` VARCHAR(255) NULL DEFAULT '', -- order_code_id
   `transaction_id` VARCHAR(100) NULL DEFAULT '',
   `transaction_type` VARCHAR(100) NULL DEFAULT '', -- CAPTURED, Authorize, PURCHASE, VERIFY
   `payment_status_text` VARCHAR(100) NULL DEFAULT '', -- APPROVED, DECLINED
   `payment_response_code` VARCHAR(100) NULL DEFAULT '', -- 00, 08
   `amount` DECIMAL(30,5),
   `currency` VARCHAR(50) NULL DEFAULT '',
   `fail_reason` VARCHAR(255) NULL DEFAULT '',
   `payment_details` TEXT NULL DEFAULT NULL, -- save full response as json
   `payment_at` DATETIME,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);