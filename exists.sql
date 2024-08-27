-- Best way to test if a row exists in a MySQL table
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

SELECT EXISTS(SELECT * FROM table_name WHERE '....'); -- return true or false

SELECT column_list FROM table_name WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);
SELECT column_list FROM table_name WHERE NOT EXISTS (SELECT column_name FROM table_name WHERE condition);

SELECT org.id, country, name FROM shared_s3v3_organisations org WHERE
    EXISTS (SELECT id, payment_method FROM shared_s3v3_org_payment_methods payment_methods WHERE
            org.id = payment_methods.organisation_id AND is_enabled = 0);

SELECT org.id, country, name FROM shared_s3v3_organisations org WHERE
    NOT EXISTS (SELECT id, payment_method FROM shared_s3v3_org_payment_methods payment_methods
                WHERE org.id = payment_methods.organisation_id);