SELECT name , count(*) as total_assistances FROM teachers 
INNER JOIN assistance_requests ON teacher_id=teachers.id
where name='Waylon Boehm'
group by name;
