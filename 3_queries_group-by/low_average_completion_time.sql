SELECT students.name as student , avg(assignment_submissions.duration) as average_assignment_duration , avg(assignments.duration) as average_estimated_duration
FROM students
INNER JOIN assignment_submissions ON assignment_submissions.student_id= students.id
INNER JOIN assignments on assignments.id=assignment_id
WHERE end_date is NULL 
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg(assignment_submissions.duration)  ;
