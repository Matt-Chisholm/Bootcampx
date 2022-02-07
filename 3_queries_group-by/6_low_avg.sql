SELECT students.name AS student, avg(assignment_submissions.duration) as average_assignment_duration,
AVG(assignments.duration) AS average_estimated_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) ASC;
