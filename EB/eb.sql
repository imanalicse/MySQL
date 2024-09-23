update shared_s3v3_org_orders set refund_status = (
    CASE
        WHEN status = 3 THEN 1
        WHEN status = 4 THEN 4
        WHEN status = 5 THEN 2
        WHEN status = 6 THEN 3
        ELSE 0
    END);


#UPDATE shared_s3v3_users SET is_email_verified = 0, first_login = 0 WHERE email = 'imanali.cse@gmail.com';
SELECT first_name, last_name, email, is_email_verified, first_login, `uuid` from shared_s3v3_users WHERE email = 'imanali.cse@gmail.com';

#Get event by uuid
SELECT * FROM shared_s3v3_org_events WHERE uuid = '395d2234-085a-4251-bedb-f764a57fab5e';