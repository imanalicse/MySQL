/*
 https://dev.mysql.com/doc/refman/5.7/en/case.html

 CASE case_value
    WHEN when_value THEN statement_list
    [WHEN when_value THEN statement_list] ...
    [ELSE statement_list]
END CASE

CASE
    WHEN search_condition THEN statement_list
    [WHEN search_condition THEN statement_list] ...
    [ELSE statement_list]
END CASE

 */

 update shared_s3v3_org_orders set refund_status = (
    CASE
        WHEN status = 3 THEN 1
        WHEN status = 4 THEN 4
        WHEN status = 5 THEN 2
        WHEN status = 6 THEN 3
        ELSE 0
    END);