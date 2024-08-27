#DELETE FROM shared_s3v3_org_payment_methods WHERE organisation_id = 6016;
#DELETE FROM shared_s3v3_org_license WHERE license_key LIKE '%.%' AND organisation_id = 6016;


SELECT org.id, country, name FROM shared_s3v3_organisations org WHERE
    EXISTS (SELECT id, payment_method FROM shared_s3v3_org_payment_methods payment_methods WHERE org.id = payment_methods.organisation_id AND is_enabled = 0);


SELECT * FROM shared_s3v3_org_payment_methods GROUP BY organisation_id;
SELECT * FROM shared_s3v3_org_payment_methods WHERE organisation_id = 6016;
SELECT * FROM shared_s3v3_org_license WHERE license_key LIKE '%.%' AND organisation_id = 6016 ORDER BY id DESC;


SELECT id, country, country_code FROM shared_s3v3_organisations where `name` = 'AU org seeder one';