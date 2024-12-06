ex 1. Write a query to list all courses, concatenating the course_name and semester fields with a hyphen between them. Like this:
"IT Essentials - 2024-3"
select course_name || ' - ' || semester as corse_info from courses;

ex 2. 
Write a query to find all courses that have a lab session scheduled on Friday. Include only the course_id, course_name, and lab_time in the result.
select course_name, course_id, lab_time from courses
where lab_time like 'Fri %';

ex 3.
Write a query to list all assignments with a due date after the current date.
select * from assignments
WHERE due_date < date('now');

ex4. 
Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").
Hint: GROUP BY
select course_id, count(*) as number_of_assignments from assignments
group by course_id;

select course_id, count(*) as number_of_assignments from assignments
group by status;

ex.5 
Write a query to find the course with the longest course_name. Use the length() function to compare the lengths.
Hint: either use ORDER BY ... DESC or do it in two steps - first find the length, then the course.
SELECT course_id, course_name, 
       LENGTH(course_name) AS name_length
FROM courses
ORDER BY LENGTH(course_name) DESC;

ex.6 
Write a query to return a list of all course names in uppercase.
select  Upper(course_name) as Course from courses;

ex. 7 
Write a query to list the titles of all assignments that are due in September, regardless of year. Use the LIKE operator to filter due_date.
SELECT title
FROM assignments WHERE due_date LIKE '%-09-%';

ex 8
Assignments with Missing Due Dates:
SELECT *
FROM assignments WHERE due_date IS NULL;

