SELECT id, created,
       CASE
           WHEN TIMESTAMPDIFF(YEAR, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(YEAR, created, NOW()), ' year', IF(TIMESTAMPDIFF(YEAR, created, NOW()) > 1, 's', ''), ' ago')
           WHEN TIMESTAMPDIFF(MONTH, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(MONTH, created, NOW()), ' month', IF(TIMESTAMPDIFF(MONTH, created, NOW()) > 1, 's', ''), ' ago')
           WHEN TIMESTAMPDIFF(DAY, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(DAY, created, NOW()), ' day', IF(TIMESTAMPDIFF(DAY, created, NOW()) > 1, 's', ''), ' ago')
           WHEN TIMESTAMPDIFF(HOUR, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(HOUR, created, NOW()), ' hour', IF(TIMESTAMPDIFF(HOUR, created, NOW()) > 1, 's', ''), ' ago')
           WHEN TIMESTAMPDIFF(MINUTE, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(MINUTE, created, NOW()), ' minute', IF(TIMESTAMPDIFF(MINUTE, created, NOW()) > 1, 's', ''), ' ago')
           WHEN TIMESTAMPDIFF(SECOND, created, NOW()) > 0 THEN
               CONCAT(TIMESTAMPDIFF(SECOND, created, NOW()), ' second', IF(TIMESTAMPDIFF(SECOND, created, NOW()) > 1, 's', ''), ' ago')
           ELSE
               'Just now'
           END AS time_ago
FROM shared_s3v3_org_orders ORDER BY id DESC LIMIT 500;

/*
1	2023-02-14 10:00:00	1 year ago
2	2023-12-01 08:30:00	2 months ago
3	2024-02-10 12:00:00	4 days ago
4	2024-02-14 08:00:00	5 hours ago
5	2024-02-14 12:30:00	15 minutes ago
6	2024-02-14 13:59:00	30 seconds ago
7	2024-02-14 14:00:00	Just now
 */