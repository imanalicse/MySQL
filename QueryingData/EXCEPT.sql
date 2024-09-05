--
-- EXCEPT operator allows you to retrieve rows from one query that do not appear in another query.
/*
 query1
EXCEPT [ALL | DISTINCT]
query2;
*/

SELECT id FROM shared_s3v3_organisations EXCEPT SELECT organisation_id FROM shared_s3v3_org_payment_methods;