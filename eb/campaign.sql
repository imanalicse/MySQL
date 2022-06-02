SELECT camp.id, camp.campaign_name, camp.is_pre_flight_check_result, camp.`status`, camp.total_recipient, camp.scheduled_at,
DATE_FORMAT(FROM_UNIXTIME(camp.scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_time,  org.`name` org_name, org.entitlement_received_from_monthly_allocation, entitlement_received_from_addon_purchase
FROM shared_s3v3_org_event_compaigns camp INNER JOIN shared_s3v3_organisations org ON
camp.organisation_id = org.id WHERE org.`name` = '' ORDER BY id DESC LIMIT 50;


SELECT UNIX_TIMESTAMP('2022-05-28 18:00:00');
UPDATE shared_s3v3_org_event_compaigns SET scheduled_at = UNIX_TIMESTAMP('2022-05-31 20:00:00'), `status` = 'active' WHERE id = 96381;
SELECT NOW(), NOW() + INTERVAL 1 HOUR;

SELECT camp.id, camp.campaign_name, camp.is_pre_flight_check_result, camp.`status`, camp.total_recipient, camp.scheduled_at,
DATE_FORMAT(FROM_UNIXTIME(camp.scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_time
FROM shared_s3v3_org_event_compaigns camp
WHERE DATE_FORMAT(FROM_UNIXTIME(camp.scheduled_at), '%Y-%m-%d %H:%i:%s') BETWEEN NOW() AND (NOW() + INTERVAL 1 HOUR)  ORDER BY id DESC LIMIT 50;



SELECT id, organisation_id, campaign_name,is_pre_flight_check_result,`status`, total_recipient,scheduled_at,
                DATE_FORMAT(FROM_UNIXTIME(scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_date_time
                FROM shared_s3v3_org_event_compaigns
                WHERE DATE_FORMAT(FROM_UNIXTIME(scheduled_at), '%Y-%m-%d %H:%i:%s') BETWEEN (NOW() + INTERVAL 1 HOUR) AND (NOW() + INTERVAL 20 HOUR)
                AND status = 'active' ORDER BY id;

# sub
SELECT sub.organisation_id, sub.order_id, org.organisation_code AS account_id FROM shared_s3v3_org_subscription sub INNER JOIN shared_s3v3_organisations org ON org.id = sub.organisation_id WHERE org.`name` = 'PPp';


#campaign_failed_status


SELECT org.id, org_sub.subscription_type, org.entitlement_received_from_monthly_allocation, entitlement_received_from_addon_purchase from shared_s3v3_organisations org INNER JOIN shared_s3v3_org_subscription org_sub ON org.id = org_sub.organisation_id ORDER BY id DESC;


UPDATE shared_s3v3_users SET is_email_verified = 1, show_org_dashboard_overview = 1,  show_event_dashboard_overview = 1 WHERE email = 'iman2@mailinator.com';
UPDATE shared_s3v3_users SET show_org_dashboard_overview = 1,  show_event_dashboard_overview = 1 WHERE email = 'iman2@mailinator.com';
SELECT id, email, is_email_verified, show_org_dashboard_overview, show_event_dashboard_overview FROM shared_s3v3_users WHERE email = 'iman2@mailinator.com';






SELECT camp.id, camp.campaign_name, camp.is_pre_flight_check_result, camp.`status`, camp.total_recipient, camp.scheduled_at,
DATE_FORMAT(FROM_UNIXTIME(camp.scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_time, org.`name` org_name, org.entitlement_received_from_monthly_allocation, entitlement_received_from_addon_purchase
FROM shared_s3v3_org_event_compaigns camp INNER JOIN shared_s3v3_organisations org ON
camp.organisation_id = org.id WHERE campaign_name = 'Liakat bhai org1' ORDER BY id DESC LIMIT 50;