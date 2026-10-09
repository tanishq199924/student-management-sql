-- 1. Find all students and their grades
SELECT student.first_name, enrollment.grade 
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id;

-- 2. Find all students, their grades, and the course name
SELECT student.first_name, enrollment.grade, course.course_name 
FROM student
JOIN enrollment ON student.student_id = enrollment.student_id
JOIN course ON enrollment.course_id = course.course_id;

-- 3. Calculate the average grade for each course
SELECT AVG(grade) AS average_grade, course.course_name 
FROM enrollment
JOIN course ON course.course_id = enrollment.course_id
GROUP BY course_name;