INSERT INTO rgs_v4_unimelb.unimelb_8949r_orders SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
WHERE archive_orders.id = 181761;

INSERT INTO rgs_v4_unimelb.unimelb_8949r_order_products SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_order_products archive_order_products
WHERE archive_order_products.order_id = 181761;

INSERT INTO rgs_v4_unimelb.unimelb_8949r_order_product_attributes SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_order_product_attributes archive_order_product_attributes
WHERE archive_order_product_attributes.order_id = 181761;

INSERT INTO rgs_v4_unimelb.unimelb_8949r_order_tickets SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_order_tickets archive_order_tickets
WHERE archive_order_tickets.order_id = 181761;

INSERT INTO rgs_v4_unimelb.unimelb_8949r_order_students SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_order_students archive_order_students
WHERE archive_order_students.order_id = 181761;

INSERT INTO rgs_v4_unimelb.unimelb_8949r_users SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_users archive_users
WHERE archive_users.id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
       WHERE archive_orders.id = 181761);


INSERT INTO rgs_v4_unimelb.unimelb_8949r_students SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_students archive_students
WHERE archive_students.id = (SELECT archive_students.id FROM rgs_v4_unimelb_archive.unimelb_8949r_students archive_students
                             WHERE archive_students.user_id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
                                                               WHERE archive_orders.id = 181761));

INSERT INTO rgs_v4_unimelb.unimelb_8949r_student_ceremonies SELECT * FROM rgs_v4_unimelb_archive.unimelb_8949r_student_ceremonies archive_student_ceremonies
WHERE archive_student_ceremonies.student_id = (SELECT archive_students.id FROM rgs_v4_unimelb_archive.unimelb_8949r_students archive_students
                             WHERE archive_students.user_id = (SELECT archive_orders.user_id FROM rgs_v4_unimelb_archive.unimelb_8949r_orders archive_orders
                                                               WHERE archive_orders.id = 181761));
