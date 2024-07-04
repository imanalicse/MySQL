# https://www.mysqltutorial.org/mysql-basics/mysql-join/
SELECT * FROM committees;
SELECT * FROM members;

-- The following statement uses an inner join clause to find members who are also the committee members:
SELECT * FROM members m INNER JOIN committees c ON c.`name`= m.`name`;
SELECT * FROM members m INNER JOIN committees c USING(`name`);

SELECT m.member_id, m.name AS member, c.committee_id, c.name AS committee
    FROM members m INNER JOIN committees c USING(`name`);

SELECT m.member_id, m.name AS member, c.committee_id, c.name AS committee
    FROM members m LEFT JOIN committees c USING(`name`);

-- To find members who are not the committee members, you add a WHERE clause and IS NULL operator as follows:
SELECT m.member_id, m.name AS member, c.committee_id, c.name AS committee
    FROM members m LEFT JOIN committees c USING(name)
    WHERE c.committee_id IS NULL;

SELECT * FROM members m RIGHT JOIN committees c ON c.`name`= m.`name`;

-- To find the committee members who are not in the members table, you use this query:
SELECT m.member_id, m.name AS member, c.committee_id, c.name AS committee
    FROM members m RIGHT JOIN committees c USING(`name`)
    WHERE member_id IS NULL;

-- CROSS JOIN
-- The cross join makes a Cartesian product of rows from the joined tables
-- Suppose the first table has n rows and the second table has m rows. The cross-join that joins the tables will return nxm rows.
SELECT m.member_id, m.name AS member, c.committee_id, c.name AS committee
    FROM members m CROSS JOIN committees c;