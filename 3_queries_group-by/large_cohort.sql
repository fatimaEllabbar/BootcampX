SELECT cohorts.name as cohort_name, count(students.id) as total_student 
FROM cohorts 
INNER JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY COUNT(students.id) ;
