SELECT `name`, COUNT(*) duplicate_item_count, id, GROUP_CONCAT(id SEPARATOR ',') AS ids
    FROM categories GROUP BY name HAVING duplicate_item_count > 1;

-- Duplicate based on multiple column:
SELECT student_id, cermdt_ds, cermtm, COUNT(*) group_count FROM federation_zo75n_student_ceremonies
GROUP BY student_id, cermdt_ds, cermtm HAVING group_count > 1 ORDER BY cermdt_ds DESC;

-- The following statement deletes duplicate rows and keeps the highest id: -- not tested
DELETE t1 FROM categories_copy t1
                   INNER JOIN categories_copy t2
                    ON t1.name = t2.name
WHERE t1.id > t2.id;