SELECT * FROM shared_s3v3_recognition_image_notifications
WHERE
   event_date_time_utc < UTC_TIMESTAMP()
  AND DATE_ADD(IF(event_date_time_utc < created_utc, created_utc, event_date_time_utc), INTERVAL 24 HOUR) > UTC_TIMESTAMP()
  AND IF(process_start_at_utc IS NULL, 1, (DATE_ADD(process_start_at_utc, INTERVAL 60 MINUTE) < UTC_TIMESTAMP()))
  AND is_processing = 0
ORDER BY id DESC, attempts ASC LIMIT 1;


SELECT * FROM shared_s3v3_process_notification_groups
WHERE (is_send_now OR start_date_time_utc <= UTC_TIMESTAMP())
  AND
    ((is_processing = 0 AND process_start_at_utc IS NULL)
        OR (IF((end_date_time_utc IS NOT NULL AND process_start_at_utc IS NOT NULL),
               (DATE_ADD(process_start_at_utc, INTERVAL 60 MINUTE) <= UTC_TIMESTAMP()) AND end_date_time_utc >= UTC_TIMESTAMP(), 0))
        )
ORDER BY id DESC LIMIT 1;

SELECT OrderTickets.* FROM shared_s3v3_org_order_tickets OrderTickets LEFT JOIN shared_s3v3_org_orders Orders
ON (OrderTickets.order_id = Orders.id AND Orders.admin_status =1 AND Orders.id = (OrderTickets.order_id))
WHERE (Orders.admin_status = 1 AND OrderTickets.level_id = 40176) AND (IF(payment_method = 'Offline', payment_status='To be Paid', 1))


SELECT OrderTickets.*
FROM shared_s3v3_org_order_tickets OrderTickets
         LEFT JOIN shared_s3v3_org_orders Orders
                   ON (OrderTickets.order_id = Orders.id AND Orders.admin_status = 1)
WHERE Orders.admin_status = 1
  AND OrderTickets.level_id = 40176
  AND (
    CASE
        WHEN Orders.payment_method = 'Offline' THEN Orders.payment_status = 'Paid'
        ELSE 1
        END
    );
