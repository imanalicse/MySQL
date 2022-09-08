select NOW();
#CONVERT_TZ (dt, from_tz,to_tz)
select CONVERT_TZ (NOW(), '+00:00','+10:00');
SELECT @@GLOBAL.time_zone, @@SESSION.time_zone;

DATE_FORMAT(FROM_UNIXTIME(1654049042), '%Y-%m-%d %H:%i:%s');