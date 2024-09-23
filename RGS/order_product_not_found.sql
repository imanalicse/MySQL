SELECT * FROM canberra_e2629_students WHERE student_id = 3215962;
#SELECT * FROM canberra_e2629_orders WHERE id = 342081;
SELECT id, order_reference_code, payment_method, payment_reference_number, payment_reference, is_stage_mobile_app_order FROM canberra_e2629_orders WHERE id = 342081;

SELECT * FROM canberra_e2629_securepay_order_sessions WHERE order_id = 342081 OR order_code_id = 'Chelse-UC-1721134239154631';
SELECT * FROM canberra_e2629_order_sessions WHERE securepay_order_session_id = 153066;