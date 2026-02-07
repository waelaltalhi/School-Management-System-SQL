
CREATE TABLE excellent_students AS
SELECT * FROM students 
WHERE gpa > 90;

CREATE TABLE failed_students AS
SELECT * FROM students 
WHERE gpa < 60;

SELECT student_name 
FROM students 
WHERE student_name LIKE 'أ%';

SELECT student_name 
FROM students 
WHERE student_name LIKE '____';

SELECT 
    AVG(gpa) AS Average_GPA, 
    MAX(gpa) AS Highest_GPA, 
    MIN(gpa) AS Lowest_GPA 
FROM students;

SELECT student_name 
FROM students 
WHERE academic_level = 6 AND gpa = 100;

SELECT student_name 
FROM students 
WHERE academic_level = 1 AND age BETWEEN 15 AND 16;

SELECT COUNT(*) AS Student_Count_Level_2 
FROM students 
WHERE level = 2;


SELECT DISTINCT track 
FROM students;


SELECT UPPER(subject_name) AS Subject_Name_Upper 
FROM subjects;


SELECT FLOOR(AVG(gpa)) AS Rounded_Average_GPA 
FROM students;


SELECT 
    REPLACE(REPLACE(gender, 'F', 'Female'), 'M', 'Male') AS Detailed_Gender 
FROM students;

UPDATE students 
SET gpa = gpa + 5 
WHERE gpa < 60;