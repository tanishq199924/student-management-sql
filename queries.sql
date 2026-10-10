
USE student_management;

-- 1. Show all students
SELECT *
FROM student;

-- 2. Show only student names and majors
SELECT first_name, last_name, major
FROM student;

-- 3. Find students older than 20
SELECT *
FROM student
WHERE age > 20;

-- 4. Find Computer Science students
SELECT *
FROM student
WHERE major = 'Computer Science';

-- 5. Find names starting with A
SELECT *
FROM student
WHERE first_name LIKE 'A%';

-- 6. Sort students by age, youngest first
SELECT *
FROM student
ORDER BY age ASC;

-- 7. Count all students
SELECT COUNT(*) AS total_students
FROM student;

-- 8. Count students in each major
SELECT major, COUNT(*) AS student_count
FROM student
GROUP BY major;

-- 9. Show every student's courses and grades
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.grade
FROM enrollment AS e
JOIN student AS s
    ON e.student_id = s.student_id
JOIN course AS c
    ON e.course_id = c.course_id;

-- 10. Calculate average grade for each course
SELECT
    c.course_name,
    AVG(e.grade) AS average_grade
FROM course AS c
JOIN enrollment AS e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

-- 11. Find the highest grade
SELECT MAX(grade) AS highest_grade
FROM enrollment;

-- 12. Find students with grades above the overall average
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.grade
FROM enrollment AS e
JOIN student AS s
    ON e.student_id = s.student_id
JOIN course AS c
    ON e.course_id = c.course_id
WHERE e.grade > (
    SELECT AVG(grade)
    FROM enrollment
);

-- 13. Count students enrolled in each course
SELECT
    c.course_name,
    COUNT(e.student_id) AS enrolled_students
FROM course AS c
LEFT JOIN enrollment AS e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

-- 14. Find students who are not enrolled in any course
SELECT s.student_id, s.first_name, s.last_name
FROM student AS s
LEFT JOIN enrollment AS e
    ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- 15. Find the student with the highest grade
SELECT
    s.first_name,
    s.last_name,
    e.grade
FROM enrollment AS e
JOIN student AS s
    ON e.student_id = s.student_id
WHERE e.grade = (
    SELECT MAX(grade)
    FROM enrollment
);
