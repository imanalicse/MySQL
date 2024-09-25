TRUNCATE TABLE table_name;

/**
How to truncate a foreign key constrained table?
https://stackoverflow.com/questions/5452760/how-to-truncate-a-foreign-key-constrained-table
*/
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE shared_s3v3_stage_image_unique_scheduler;
TRUNCATE TABLE shared_s3v3_stage_images;
TRUNCATE TABLE shared_s3v3_event_mapped_participants;
SET FOREIGN_KEY_CHECKS = 1;