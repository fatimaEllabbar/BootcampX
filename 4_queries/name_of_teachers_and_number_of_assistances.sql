select distinct teachers.name as teacher, cohorts.name as cohort , count(assistance_requests.id) as total_assistances from teachers 
inner join assistance_requests ON teacher_id=teachers.id
inner join students on student_id=students.id
inner join cohorts on cohort_id=cohorts.id
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
order by teachers.name ;
