DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_order_products WHERE order_id = 181761;
DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_order_product_attributes WHERE order_id = 181761;
DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_order_tickets WHERE order_id = 181761;
DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_order_students WHERE order_id = 181761;
DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_users
WHERE id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
                                                                       WHERE archive_orders.id = 181761);

DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_student_ceremonies
WHERE student_id = (SELECT archive_students.id FROM rgs_v4_unimelb_archive.unimelb_8949r_students archive_students
WHERE archive_students.user_id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
WHERE archive_orders.id = 181761));

DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_students
WHERE id = (SELECT archive_students.id FROM rgs_v4_unimelb_archive.unimelb_8949r_students archive_students
WHERE archive_students.user_id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
WHERE archive_orders.id = 181761));

DELETE FROM rgs_v4_unimelb_archive.unimelb_8949r_orders WHERE id = 181761;