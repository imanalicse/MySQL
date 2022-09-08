SELECT * FROM shared_s3v3_event_mapped_participants where student_id = 'usc7426';
SELECT * FROM shared_s3v3_stage_images where emp_id = (SELECT id FROM shared_s3v3_event_mapped_participants where student_id = 'usc7426');

DELETE FROM shared_s3v3_stage_images where emp_id IN (SELECT id FROM shared_s3v3_event_mapped_participants where student_id = 'US060213');
DELETE FROM shared_s3v3_event_mapped_participants where student_id = 'US060213';