-- Insert students
INSERT INTO student (first_name, last_name, major, age)
VALUES
('Ali', 'Khan', 'Computer Science', 21),
('Sara', 'Smith', 'Business', 22),
('John', 'Brown', 'Mathematics', 20),
('Emma', 'Wilson', 'Computer Science', 23),
('Noah', 'Taylor', 'Business', 19),
('Mia', 'Davis', 'Mathematics', 21),
('Liam', 'Martin', 'Computer Science', 22),
('Ava', 'Thomas', 'Biology', 20),
('Leo', 'White', 'Biology', 24),
('Zoe', 'Harris', 'Business', 21);

-- Insert courses
INSERT INTO course (course_name, credits)
VALUES
('SQL Basics', 3),
('Python Programming', 4),
('Database Design', 3),
('Web Development', 4),
('Data Analysis', 3);

-- Enroll students and record grades
INSERT INTO enrollment (student_id, course_id, grade)
VALUES
(1, 1, 88.50),
(1, 2, 91.00),
(1, 3, 84.00),
(2, 1, 79.00),
(2, 4, 86.50),
(2, 5, 90.00),
(3, 1, 95.00),
(3, 3, 89.50),
(3, 5, 82.00),
(4, 2, 93.00),
(4, 3, 87.00),
(4, 4, 90.50),
(5, 1, 76.00),
(5, 5, 81.50),
(6, 3, 92.00),
(6, 5, 88.00),
(7, 1, 85.00),
(7, 2, 89.00),
(8, 4, 94.00),
(9, 2, 78.50);

-- Check that the data was inserted
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrollment;
