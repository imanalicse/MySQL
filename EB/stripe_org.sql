SELECT id, UUID, `name`, email,
stripe_connect_id,
stripe_customer_id,
stripe_connect_email,
stripe_account_verified,
stripe_account_email_status,
stripe_account_links_create_response,
stripe_details_submitted,
stripe_connected,
stripe_charges_enabled,
default_payment_method
FROM shared_s3v3_organisations ORDER BY id DESC LIMIT 10;

SELECT COUNT(stripe_connect_id) count_stripe_connect_id, stripe_connect_id, id, UUID, `name`, email
FROM shared_s3v3_organisations WHERE stripe_connect_id !='' GROUP BY stripe_connect_id HAVING count_stripe_connect_id > 1;

SELECT stripe_connect_id, id, UUID, `name`, email
FROM shared_s3v3_organisations WHERE stripe_connect_id ='';


SELECT organisations.id as organisation_id, stripe_connect_id FROM shared_s3v3_organisations organisations
where stripe_connect_id != '' AND organisations.id NOT IN (SELECT DISTINCT(organisation_id) FROM shared_s3v3_settings WHERE setting_key = 'Site.is_stripe_domain_added') ORDER BY organisations.id DESC;

SELECT * FROM shared_s3v3_settings WHERE setting_key = 'Site.is_stripe_domain_added';