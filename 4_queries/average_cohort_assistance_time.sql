select cohorts.name as name ,avg(completed_at-started_at) as average_assistance_request_duration from assistance_requests
inner join students on student_id=students.id
inner join cohorts on cohort_id=cohorts.id
group by cohorts.name
order by average_assistance_request_duration ;
