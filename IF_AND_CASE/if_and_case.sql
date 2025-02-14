SELECT sum(order_total), GROUP_CONCAT(order_total) AS group_order_total FROM shared_s3v3_org_orders where event_id = 36302 AND if (payment_method ='Offline', payment_status = 'Paid', 1);

SELECT sum(order_total), GROUP_CONCAT(order_total) AS group_order_total FROM shared_s3v3_org_orders where event_id = 36302 AND case when payment_method ='Offline' then payment_status = 'Paid' ELSE 1 END;
