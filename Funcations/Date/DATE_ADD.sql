SELECT NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY);
SELECT NOW(), DATE_ADD(NOW(), INTERVAL -3 HOUR);

SELECT * FROM shared_s3v3_recognition_image_notifications
WHERE
        event_date_time_utc < UTC_TIMESTAMP()
  AND DATE_ADD(IF(event_date_time_utc <= created_utc, created_utc, event_date_time_utc), INTERVAL $interval_hour HOUR) >= UTC_TIMESTAMP()
  AND IF(process_start_at_utc IS NULL, 1, (DATE_ADD(process_start_at_utc, INTERVAL 60 MINUTE) <= UTC_TIMESTAMP()))
  AND is_processing = 0
  AND is_final_processed = 0
  AND is_final_notify = 0
ORDER BY id DESC, attempts ASC