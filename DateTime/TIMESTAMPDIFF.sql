/**
 	TIMESTAMPDIFF() - Subtract an interval from a datetime expression
 	MONTH, YEAR, MINUTE
 */
SELECT TIMESTAMPDIFF(MONTH,'2003-02-01','2003-05-01');
  -> 3
SELECT TIMESTAMPDIFF(YEAR,'2002-05-01','2001-01-01');
  -> -1
SELECT TIMESTAMPDIFF(MINUTE,'2003-02-01','2003-05-01 12:05:55');
  -> 128885

SELECT id, created_at, NOW(), TIMESTAMPDIFF(MINUTE, created_at, NOW()) AS time_diff from shared_s3v3_stage_images WHERE TIMESTAMPDIFF(MINUTE, created_at, NOW()) > 2 ORDER BY id DESC;