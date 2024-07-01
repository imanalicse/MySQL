# https://www.mysqltutorial.org/mysql-basics/mysql-join/
SELECT * FROM committees;
SELECT * FROM members;

SELECT * FROM members m INNER JOIN committees c ON c.`name`= m.`name`;

SELECT * FROM members m LEFT JOIN committees c ON c.`name`= m.`name`;

SELECT * FROM members m RIGHT JOIN committees c ON c.`name`= m.`name`;
