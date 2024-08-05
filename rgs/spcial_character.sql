UPDATE newcastle_nce23_students SET special_access_need = 'Mobility difficulties – require seat close to exit' WHERE student_id = '3390600';
SELECT special_access_need FROM newcastle_nce23_students WHERE student_id = '3390600';

SELECT student_id, special_access_need FROM newcastle_nce23_students WHERE special_access_need LIKE '%â€“%';