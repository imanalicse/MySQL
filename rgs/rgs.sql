SELECT * FROM shared_s3v3_event_mapped_participants where student_id = 'usc7426';
SELECT * FROM shared_s3v3_stage_images where emp_id = (SELECT id FROM shared_s3v3_event_mapped_participants where student_id = 'usc7426');

DELETE FROM shared_s3v3_stage_images where emp_id IN (SELECT id FROM shared_s3v3_event_mapped_participants where student_id = 'US060213');
DELETE FROM shared_s3v3_event_mapped_participants where student_id = 'US060213';


SELECT id, order_id, to_email, is_send_mail  FROM shared_s3v3_send_order_mails
WHERE university_id = 128 AND is_generating = 1 AND is_send_mail > 3 AND created > '2022-12-04 23:59:59';

SELECT id, order_id, to_email, is_send_mail  FROM shared_s3v3_send_order_mails WHERE university_id = 119 AND order_id IN (354061);

SELECT id, is_email_sent, customer_email FROM unimelb_8949r_orders WHERE id IN (354061);

SELECT id, is_email_sent, customer_email FROM unimelb_8949r_orders WHERE is_email_sent = 0 and order_pdf_file != '' ORDER BY id DESC;


SELECT id, order_id, to_email, is_send_mail  FROM shared_s3v3_send_order_mails WHERE university_id = 129 AND order_id IN (

);


SELECT order_id from anu_mae23_vip_ticket_attendees
WHERE cermdt_ds LIKE '2212%' AND cermdt_ds != '221231' AND order_status = 1 AND email_sent = 1 AND order_id IS NOT NULL
AND order_id NOT IN (select DISTINCT(order_id) from anu_mae23_order_special_tickets WHERE order_id IN (SELECT order_id from anu_mae23_vip_ticket_attendees
WHERE cermdt_ds LIKE '2212%' AND cermdt_ds != '221231' AND order_status = 1 AND email_sent = 1 AND order_id IS NOT NULL));