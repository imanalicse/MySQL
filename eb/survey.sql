DELETE FROM shared_s3v3_org_event_survey_responses
WHERE event_id = (SELECT id FROM shared_s3v3_org_events WHERE `uuid` = '274c489c-667b-4e1c-8729-81c463cbb08a');
SELECT * FROM shared_s3v3_org_event_survey_responses
WHERE event_id = (SELECT id FROM shared_s3v3_org_events WHERE `uuid` = '274c489c-667b-4e1c-8729-81c463cbb08a');

SELECT ques.*, COUNT(ans.id) AS answer_count,
    GROUP_CONCAT(CONCAT('{"answer":',ans.answer,',"download_id":',IFNULL(ans.download_id,""),'}')) AS ans_details
    FROM shared_s3v3_org_event_survey_questions ques
    LEFT JOIN shared_s3v3_org_event_survey_question_answers ans ON ques.id = ans.survey_question_id
    GROUP BY ques.id ORDER BY answer_count desc;