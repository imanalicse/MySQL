select NOW();
#CONVERT_TZ (dt, from_tz,to_tz)
select CONVERT_TZ (NOW(), '+00:00','+10:00');
SELECT @@global.time_zone, @@session.time_zone, @@system_time_zone;
select timediff(now(),convert_tz(now(),@@session.time_zone,'+00:00'));

DATE_FORMAT(FROM_UNIXTIME(1654049042), '%Y-%m-%d %H:%i:%s');

SELECT UTC_TIMESTAMP(),CURRENT_TIMESTAMP(), NOW();