SET @notification_id = 80;
SELECT id FROM southam_v4_latrobe.latrobe_d8765_notifications WHERE id =@notification_id;
SELECT id FROM southam_v4_latrobe.latrobe_d8765_notification_groups WHERE notification_id =@notification_id;
SELECT * FROM southam_v4_latrobe.latrobe_d8765_notification_recipients WHERE notification_id =@notification_id;
SELECT * FROM southam_v4_shared4.shared_s3v3_process_notification_groups WHERE notification_group_id IN (SELECT id FROM southam_v4_latrobe.latrobe_d8765_notification_groups WHERE notification_id IN (@notification_id));

SET @notification_id = 80;
DELETE FROM southam_v4_shared4.shared_s3v3_process_notification_groups WHERE notification_group_id IN (SELECT id FROM southam_v4_latrobe.latrobe_d8765_notification_groups WHERE notification_id IN (@notification_id));
DELETE FROM southam_v4_latrobe.latrobe_d8765_notifications WHERE id =@notification_id;
DELETE FROM southam_v4_latrobe.latrobe_d8765_notification_groups WHERE notification_id =@notification_id;
DELETE FROM southam_v4_latrobe.latrobe_d8765_notification_recipients WHERE notification_id =@notification_id;