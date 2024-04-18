SELECT id, product_name, attributes, JSON_EXTRACT(attributes,'$.color') AS  color FROM products;

SELECT product_name, JSON_UNQUOTE(JSON_EXTRACT(attributes, '$.color')) AS color FROM products HAVING color = "red";