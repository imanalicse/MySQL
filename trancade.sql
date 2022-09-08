TRUNCATE TABLE table_name;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE shared_s3v3_stage_image_unique_scheduler;
TRUNCATE TABLE shared_s3v3_stage_images;
TRUNCATE TABLE shared_s3v3_event_mapped_participants;
SET FOREIGN_KEY_CHECKS = 1;