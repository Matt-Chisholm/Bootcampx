SELECT day, count(*)
FROM assignments
GROUP BY assignments.day
Order BY assignments.day;