select teachers.name as teacher, students.name as student , assignments.name as assignment ,completed_at-started_at as duration 
from teachers 
inner join assistance_requests ON teacher_id=teachers.id
INNER JOIN students ON student_id=students.id
inner join assignments on assignment_id=assignments.id
order by duration;
