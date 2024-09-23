#DELETE FROM shared_s3v3_org_payment_methods WHERE organisation_id = 6016;
#DELETE FROM shared_s3v3_org_license WHERE license_key LIKE '%.%' AND organisation_id = 6016;


SELECT org.id, country, name FROM shared_s3v3_organisations org WHERE
    EXISTS (SELECT id, payment_method FROM shared_s3v3_org_payment_methods payment_methods WHERE org.id = payment_methods.organisation_id AND is_enabled = 0);


SELECT * FROM shared_s3v3_org_payment_methods GROUP BY organisation_id;
SELECT * FROM shared_s3v3_org_payment_methods WHERE organisation_id = 6016;
SELECT * FROM shared_s3v3_org_license WHERE license_key LIKE '%.%' AND organisation_id = 6016 ORDER BY id DESC;


SELECT id, country, country_code FROM shared_s3v3_organisations where `name` = 'AU org seeder one';


SELECT id, payment_method, order_reference_code, payment_reference_number, event_payment_method FROM shared_s3v3_org_orders WHERE order_reference_code LIKE '%YGN1Z5%' ORDER BY id DESC LIMIT 5;
SELECT * FROM shared_s3v3_org_securepay_payments WHERE refid LIKE '%YGN1Z5%';

SELECT * FROM shared_s3v3_org_payment_methods WHERE organisation_id IN (SELECT id FROM shared_s3v3_organisations WHERE country = 'AU org seeder one');

DELETE FROM shared_s3v3_org_payment_methods WHERE payment_method = 'PayPal' AND organisation_id IN (SELECT id FROM shared_s3v3_organisations WHERE country = 'South Africa');