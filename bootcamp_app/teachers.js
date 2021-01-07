const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort from teachers 
inner join assistance_requests ON teacher_id=teachers.id
inner join students on student_id=students.id
inner join cohorts on cohort_id=cohorts.id
where cohorts.name = $1
order by teachers.name ;
`,[process.argv[2]])
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));
