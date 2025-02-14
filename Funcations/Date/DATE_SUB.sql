-- Get records from the last 1 week: MINUTE, DAY, WEEK, MONTH, YEAR
SELECT id AS order_id, order_total, created FROM shared_s3v3_org_orders WHERE created >= DATE_SUB(NOW(), INTERVAL 1 WEEK);