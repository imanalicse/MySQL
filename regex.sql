-- start with vowels
SELECT DISTINCT first_name FROM latrobe_d8765_students WHERE first_name REGEXP '^[aeiou]';

-- do not start with vowels
SELECT DISTINCT first_name FROM latrobe_d8765_students WHERE first_name REGEXP '^[^aeiou]';

-- vowels (i.e., a, e, i, o, and u) as both their first and last characters
SELECT DISTINCT first_name FROM latrobe_d8765_students WHERE first_name REGEXP '^[aeiou].*[aeiou]$';