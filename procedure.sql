DELIMITER &&
CREATE PROCEDURE get_users
BEGIN
    SELECT * FROM users;
    SELECT COUNT(*) AS total_user FROM users;
END &&
DELIMITER;



delimiter
CREATE PROCEDURE getUsers
    BEGIN
     SELECT * FROM users;
    END
delimiter;