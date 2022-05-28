SELECT camp.id, camp.campaign_name, camp.is_pre_flight_check_result, camp.`status`, camp.total_recipient, camp.scheduled_at,
DATE_FORMAT(FROM_UNIXTIME(camp.scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_time,  org.`name` org_name, org.entitlement_received_from_monthly_allocation, entitlement_received_from_addon_purchase
FROM shared_s3v3_org_event_compaigns camp INNER JOIN shared_s3v3_organisations org ON
camp.organisation_id = org.id WHERE org.`name` = 'PPp' ORDER BY id DESC LIMIT 50;
