SELECT name, COUNT(*) c FROM table GROUP BY name HAVING c > 1;

SELECT payment_method_code, COUNT(*) payment_method_code_count FROM shared_s3v3_payments
    GROUP BY payment_method_code HAVING payment_method_code_count > 1;