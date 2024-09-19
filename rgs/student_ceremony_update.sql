UPDATE unimelb_8949r_students SET cermdt_ds ='240430' WHERE cermdt_ds = '240424';
UPDATE unimelb_8949r_student_ceremonies SET cermdt_ds ='240430' WHERE cermdt_ds = '240424';
SELECT id, cermdt_ds from unimelb_8949r_students WHERE cermdt_ds = '240424';
SELECT id, cermdt_ds from unimelb_8949r_student_ceremonies WHERE cermdt_ds = '240424';