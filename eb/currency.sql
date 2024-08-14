SELECT currency FROM shared_s3v3_org_after_pay_payments WHERE reference_id = 'R5M2B4-P30KT9-1723603470';
SELECT event_id, base_currency_code, currency_code FROM shared_s3v3_org_orders WHERE order_reference_code = 'R5M2B4-P30KT9-1723603470';

SELECT id, currency FROM shared_s3v3_org_events WHERE id = (SELECT event_id FROM shared_s3v3_org_orders WHERE order_reference_code = 'R5M2B4-P30KT9-1723603470');