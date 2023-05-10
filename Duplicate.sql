SELECT name, COUNT(*) c FROM table GROUP BY name HAVING c > 1;

SELECT payment_method_code, COUNT(*) payment_method_code_count FROM shared_s3v3_payments
    GROUP BY payment_method_code HAVING payment_method_code_count > 1;

-- The following statement deletes duplicate rows and keeps the highest id: -- not tested
DELETE t1 FROM shared_s3v3_stage_images t1
                   INNER JOIN shared_s3v3_stage_images t2
WHERE t1.id > t2.id AND  t1.img_name = t2.img_name;