-- Syntax: TIMESTAMPDIFF(unit, start_date, end_date).
-- Example units: YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
SELECT TIMESTAMPDIFF(HOUR, '2025-01-01 12:00:00', '2025-02-14 14:00:00') AS hours_difference;