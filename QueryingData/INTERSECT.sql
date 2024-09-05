-- The INTERSECT operator is a set operator that returns the common rows of two or more queries.
-- The INTERSECT operator uses the DISTINCT by default.
/*
query1
INTERSECT [ALL | DISTINCT]
query2;
*/

SELECT id FROM shared_s3v3_organisations INTERSECT SELECT organisation_id FROM shared_s3v3_org_payment_methods;