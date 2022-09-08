/*
 https://dev.mysql.com/doc/refman/8.0/en/update.html
 Single-table syntax:
 UPDATE [LOW_PRIORITY] [IGNORE] table_reference
    SET assignment_list
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

 Multiple-table syntax:
 UPDATE [LOW_PRIORITY] [IGNORE] table_references
    SET assignment_list
    [WHERE where_condition]

 For multiple-table syntax, ORDER BY and LIMIT cannot be used.

 UPDATE t1 SET col1 = col1 + 1;
 UPDATE t1 SET col1 = col1 + 1, col2 = col1; - The result is that col1 and col2 have the same value

 Single-table UPDATE assignments are generally evaluated from left to right.
 For multiple-table updates, there is no guarantee that assignments are carried out in any particular order.
 If you update a column that has been declared NOT NULL by setting to NULL, an error occurs if strict SQL mode is enabled;

 */
UPDATE cities set name = 'Manikganj' WHERE name = "Manikganj";

UPDATE shared_s3v3_org_event_attendee_data_copy set collection_type = 'from-buyers-only' WHERE collection_type = '';