SET @org_id := (SELECT id FROM shared_s3v3_organisations org WHERE org.name = 'Iman Ali org');
SET @start_date := '2022-01-01 00:00:00';
SET @end_date := '2022-02-18 00:00:00';

-- Revenue query
SELECT SUM(order_total) AS order_total, (IF(total_refunded IS NULL,0, SUM(total_refunded))) AS total_refunded,
    (SUM(order_total) - (IF(total_refunded IS NULL,0, SUM(total_refunded)))) AS revenue
FROM shared_s3v3_org_orders Orders LEFT JOIN shared_s3v3_org_events evt  ON evt.id = Orders.event_id
WHERE Orders.payment_status='Paid' AND Orders.organisation_id = @org_id AND Orders.date_purchased >= @start_date AND Orders.date_purchased <= @end_date
GROUP BY Orders.event_id
ORDER BY Orders.event_id DESC, Orders.date_purchased DESC, Orders.id DESC;


SELECT Orders.id AS order_id, Orders.event_id, order_total, total_refunded, total_tickets, date_purchased, evt.uuid, evt.event_name
    FROM shared_s3v3_org_orders Orders LEFT JOIN shared_s3v3_org_events evt  ON evt.id = Orders.event_id
	WHERE Orders.payment_status='Paid' AND Orders.status = 1 AND Orders.organisation_id = @org_id AND Orders.date_purchased >= @start_date AND Orders.date_purchased <= @end_date
ORDER BY Orders.event_id DESC, Orders.date_purchased desc, Orders.id desc;


