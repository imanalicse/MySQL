SET @org_id := (SELECT id FROM shared_s3v3_organisations org WHERE org.name = 'Iman Ali org');
SET @start_date := '2022-01-01 00:00:00';
SET @end_date := '2022-02-18 00:00:00';

SELECT orders.id AS order_id, event_id, order_total, total_refunded, date_purchased FROM shared_s3v3_org_orders orders LEFT JOIN shared_s3v3_org_events evt  ON evt.id = orders.event_id
	WHERE orders.organisation_id = @org_id AND orders.date_purchased >= @start_date AND orders.date_purchased <= @end_date
ORDER BY orders.event_id DESC, orders.date_purchased desc, orders.id desc;