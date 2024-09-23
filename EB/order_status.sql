SELECT Orders.id, Orders.old_status, Orders.refund_status, Orders.admin_status, Orders.total_refunded, Orders.order_total
FROM shared_s3v3_org_orders Orders
WHERE Orders.old_status > 1
ORDER BY Orders.id DESC LIMIT 100;


update shared_s3v3_org_orders set refund_status = (
    CASE
        WHEN status = 3 THEN 1
        WHEN status = 4 THEN 4
        WHEN status = 5 THEN 2
        WHEN status = 6 THEN 3
        ELSE 0
    END)
    ORDER BY id desc;

update shared_s3v3_org_orders set admin_status = IF(status = 1, 1, 0)  ORDER BY id desc;