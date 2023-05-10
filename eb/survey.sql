DELETE FROM shared_s3v3_org_event_survey_responses
WHERE event_id = (SELECT id FROM shared_s3v3_org_events WHERE `uuid` = '274c489c-667b-4e1c-8729-81c463cbb08a');
SELECT * FROM shared_s3v3_org_event_survey_responses
WHERE event_id = (SELECT id FROM shared_s3v3_org_events WHERE `uuid` = '274c489c-667b-4e1c-8729-81c463cbb08a');