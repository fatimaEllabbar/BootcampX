select assignments.id as id, name, day, chapter , count(*) as total_requests 
from assignments 
inner join assistance_requests on assignments.id=assignment_id
group by assignments.id, name, day,chapter
order by total_requests desc;
