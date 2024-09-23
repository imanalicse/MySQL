UPDATE shared_s3v3_recognition_image_notifications SET process_start_at_utc = DATE_SUB(process_start_at_utc, INTERVAL 60 MINUTE) WHERE id = 1;


UPDATE shared_s3v3_recognition_image_notifications
SET
    process_start_at_utc = DATE_SUB(process_start_at_utc, INTERVAL 60 MINUTE),
    is_processing = 0,
    is_final_processed = 0,
    is_final_notify = 0,
    is_graduation_image_notify = 0,
    is_candid_image_notify = 0,
    is_stage_image_notify = 0,
    is_final_notify = 0
WHERE id IN(4);



SELECT is_processing, is_final_processed, is_final_notify,
       DATE_ADD(IF(event_date_time_utc < created_utc, created_utc, event_date_time_utc), INTERVAL 24 HOUR) > UTC_TIMESTAMP(),
       IF(process_start_at_utc IS NULL, 1, (DATE_ADD(process_start_at_utc, INTERVAL 1 HOUR) < UTC_TIMESTAMP()))
FROM shared_s3v3_recognition_image_notifications;


SELECT * FROM shared_s3v3_recognition_image_notifications
WHERE
   event_date_time_utc < UTC_TIMESTAMP()
  AND DATE_ADD(IF(event_date_time_utc < created_utc, created_utc, event_date_time_utc), INTERVAL 24 HOUR) > UTC_TIMESTAMP()
  AND IF(process_start_at_utc IS NULL, 1, (DATE_ADD(process_start_at_utc, INTERVAL 60 MINUTE) < UTC_TIMESTAMP()))
  AND is_processing = 0
  AND is_final_processed = 0
  AND is_final_notify = 0
ORDER BY id DESC, attempts ASC LIMIT 100