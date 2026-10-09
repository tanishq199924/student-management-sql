INSERT INTO student(first_name, last_name, major, age) 
VALUES ('Ali', 'Khan', 'Computer science', 21),
       ('Sara', 'Smith', 'Business', 22),
       ('John', 'Brown', 'Mathematics', 20);

INSERT INTO course(course_name, credits) 
VALUES ('SQL Basics', 3),
       ('Python programming', 4),
       ('Database Design', 3),
       ('Web Development', 4);

INSERT INTO enrollment(student_id, course_id, grade) 
VALUES (1, 1, 85.50),
       (1, 2, 92.00),
       (2, 1, 78.00),
       (3, 3, 95.00);