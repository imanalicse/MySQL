SELECT NOW(), NOW() + INTERVAL 1 HOUR;
SELECT UNIX_TIMESTAMP('2022-05-28 18:00:00');

SELECT NOW(), UTC_TIMESTAMP(), DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP(UTC_TIMESTAMP())), '%Y-%m-%d %H:%i:%s');


#Upcomming
SELECT id, organisation_id, campaign_name,is_pre_flight_check_result,`status`, total_recipient,scheduled_at,
                DATE_FORMAT(FROM_UNIXTIME(scheduled_at), '%Y-%m-%d %H:%i:%s') AS scheduled_date_time
                FROM shared_s3v3_org_event_compaigns
                WHERE DATE_FORMAT(FROM_UNIXTIME(scheduled_at), '%Y-%m-%d %H:%i:%s') BETWEEN (NOW() + INTERVAL 1 HOUR) AND (NOW() + INTERVAL 25 HOUR)
                AND status = 'active' ORDER BY id;


SELECT *
FROM  persons
WHERE  DATE_ADD(birthday,
                INTERVAL YEAR(CURDATE())-YEAR(birthday)
                         + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(birthday),1,0)
                YEAR)
            BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);