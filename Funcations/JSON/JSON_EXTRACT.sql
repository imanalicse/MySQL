/* The JSON_EXTRACT() function is used to retrieve a specific value from a JSON document stored in a JSON column

 */
SELECT id, product_name, attributes, JSON_EXTRACT(attributes,'$.color') AS  color FROM products;

SELECT product_name, JSON_UNQUOTE(JSON_EXTRACT(attributes, '$.color')) AS color FROM products HAVING color = "red";

SELECT JSON_EXTRACT(payload, '$.university_id') AS uni_id, JSON_EXTRACT(payload, '$.university_name') university_name FROM middleware_logs WHERE JSON_EXTRACT(payload, '$.university_name') LIKE "%Canberra%" ORDER BY id DESC LIMIT 200;