const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const name = 'FEB12';
const limit=2;
pool.query(`
SELECT students.id, students.name as students_name, cohorts.name as cohort_name
FROM students
INNER JOIN cohorts ON cohort_id=cohorts.id
where cohorts.name=$1 
LIMIT $2;
`,[process.argv[2],process.argv[3]])
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));
