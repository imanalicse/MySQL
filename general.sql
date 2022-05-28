#Convert timestamp to date in MySQL query
DATE_FORMAT(FROM_UNIXTIME(`user.created`), '%Y-%m-%d %H:%i:%s') AS 'date_formatted'