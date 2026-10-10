
-- STEP 1: Create the database
DROP DATABASE IF EXISTS student_management;
CREATE DATABASE student_management;
USE student_management;

-- STEP 2: Create the student table
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    major VARCHAR(100),
    age INT
);

-- STEP 3: Create the course table
CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);

-- STEP 4: Create the enrollment table
CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    grade DECIMAL(5,2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id)
        REFERENCES student(student_id),
    FOREIGN KEY (course_id)
        REFERENCES course(course_id)
);

-- STEP 5: Insert students
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

-- STEP 6: Insert courses
INSERT INTO course (course_name, credits)
VALUES
('SQL Basics', 3),
('Python Programming', 4),
('Database Design', 3),
('Web Development', 4),
('Data Analysis', 3);

-- STEP 7: Enroll students and record grades
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

-- STEP 8: Check that the data was inserted
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrollment;
