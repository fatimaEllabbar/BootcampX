SELECT name as student , avg(duration) as average_assignment_duration 
FROM students
INNER JOIN assignment_submissions ON assignment_submissions.student_id= students.id
WHERE end_date is NULL 
GROUP BY name
ORDER BY avg(duration) DESC ;
