select avg(total_duration) as average_total_duration from (select sum(completed_at-started_at) as total_duration from assistance_requests
inner join students on student_id=students.id
inner join cohorts on cohort_id=cohorts.id
group by cohorts.name
order by total_duration) as total_durations ;