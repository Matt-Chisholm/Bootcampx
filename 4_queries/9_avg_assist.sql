SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT cohorts.name, sum(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM students
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  JOIN cohorts ON students.cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY sum(assistance_requests.completed_at - assistance_requests.started_at)
) AS total_duration;