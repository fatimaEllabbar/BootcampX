SELECT name , count(*) as total_assistances FROM students
INNER JOIN assistance_requests ON student_id=students.id
where name='Elliot Dickinson'
group by name;
