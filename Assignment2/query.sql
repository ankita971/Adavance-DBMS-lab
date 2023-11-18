
#1) Retrieve the names and email addresses of all students.
use databse;
select Name , Email from student_table;

#2)Find the courses that have more than three credits.
select courseName,credits from course_table where credits>3;

#3) List the exams scheduled after November 15, 2023.
select Exam_id,ExamDate from exam_Table where ExamDate> '2023-11-15';

#4) Get the faculty members who work in the "Mathematics" department. 
select * from faculty_table  where Department='Mathematics';

#5) Retrieve the courses that each student is enrolled in. 
SELECT student_Table.Name, course_Table.courseName
FROM student_Table
JOIN enrollment_table ON student_Table.Student_id = enrollment_Table.enrollment_id
JOIN course_table ON enrollment_Table.course_id = Course_Table.course_id; 

#6) Find the average score for each exam. 
SELECT Exam_id, AVG(Score) AS AverageScore
FROM examresults_table
GROUP BY Exam_id;

#7) List the students who scored above 90 on any exam. 
SELECT DISTINCT student_Table.Name, examresults_Table.Score
FROM student_Table
JOIN examresults_Table  ON student_Table.Student_id = examresults_Table.Student_id
WHERE Score > 90;
#8) Retrieve the faculty members who teach multiple courses. 
SELECT Faculty_table.Name, COUNT(*) AS CourseCount
FROM teaching_table
JOIN faculty_table ON teaching_table.Faculty_id = Faculty_table.Faculty_id
GROUP BY Faculty_table.Faculty_id
HAVING CourseCount > 1;
#9) Find the students who have not registered for any exams. 
SELECT student_Table.Name
FROM student_table
WHERE Student_id NOT IN (SELECT Student_id FROM examregistration_table);
#10) Retrieve the total number of enrollments for each course. 
SELECT Course_table.courseName, COUNT(enrollment_table.course_id) AS TotalEnrollments
FROM course_Table
LEFT JOIN enrollment_Table ON course_Table.course_id = enrollment_Table.course_id
GROUP BY course_Table.course_id;
#11) Find the students who are enrolled in the "History" course. 
SELECT Student_table.Name
FROM student_table
JOIN enrollment_table ON Student_table.Student_id = Enrollment_table.Student_id
JOIN course_table ON Enrollment_table.course_id = Course_table.course_id
WHERE Course_table.courseName = 'History';
#12) Retrieve the exams and their locations scheduled for November 2023. 
SELECT Exam_id, ExamDate, Location
FROM exam_table
WHERE YEAR(ExamDate) = 2023 AND MONTH(ExamDate) = 11;
#13) List the courses with the highest number of enrollments. 
SELECT c.courseName, MAX(e.Enrollments) AS MaxEnrollments
FROM course_table c
LEFT JOIN (
SELECT course_id, COUNT(Student_id) AS Enrollments
FROM enrollment_table
GROUP BY course_id
) e ON c.course_id = e.course_id
GROUP BY c.courseName;
#14) Find the average score for each student. 
SELECT Student_table.Name, AVG(Score) AS AverageScore
FROM student_table
JOIN examresults_table ON Student_table.Student_id = ExamResults_table.Student_id
GROUP BY Student_table.Student_id;
#15) Retrieve the exams that have no registered students. 
SELECT E.Exam_id, E.ExamDate
FROM exam_table E
LEFT JOIN examregistration_table ER ON E.Exam_id = ER.Exam_id
WHERE ER.Exam_id IS NULL;
#16) List the faculty members who have yet to teach any courses. 
SELECT Faculty_table.Name
FROM faculty_table
LEFT JOIN teaching_table ON Faculty_table.Faculty_id = Teaching_table.Faculty_id
WHERE Teaching_table.Faculty_id IS NULL;
#17) Find the students who have registered for exams in both "Mathematics" and "Computer Science" departments. 
SELECT Student_table.Name
FROM student_table
JOIN enrollment_table ON Student_table.Student_id = Enrollment_table.Student_id
JOIN course_table ON Enrollment_table.course_id = course_table.course_id
JOIN teaching_table ON course_table.course_id = Teaching_table.course_id
JOIN faculty_table ON Teaching_table.Faculty_id = Faculty_table.Faculty_id
WHERE Faculty_table.Department IN ('Mathematics', 'Computer Science')
GROUP BY Student_table.Student_id
HAVING COUNT(DISTINCT Faculty_table.Department) = 2;
#18) Retrieve the students who scored the highest in each exam. 
SELECT ExamResults_table.Exam_id, Student_table.Name, ExamResults_table.Score
FROM examresults_table
JOIN student_table ON ExamResults_table.Student_id = Student_table.Student_id
WHERE (ExamResults_table.Exam_id, ExamResults_table.Score) IN (
SELECT Exam_id, MAX(Score)
FROM ExamResults_table
GROUP BY Exam_id);
#19) Find the courses that no student has enrolled in. 
SELECT CourseName
FROM course_table
LEFT JOIN Enrollment_table ON Course_table.course_id = Enrollment_table.course_id
WHERE Enrollment_table.`Student_id` IS NULL;
#20) Retrieve the faculty members who teach courses with an average enrollment count above 10. 
SELECT Faculty_table.Name, AVG(Enrollments) AS AverageEnrollments
FROM faculty_table
JOIN Teaching_table ON Faculty_table.Faculty_id = Teaching_table.Faculty_id
JOIN (
SELECT Course_table.course_id, COUNT(Enrollment_table.Student_id) AS Enrollments
FROM course_table
LEFT JOIN enrollment_table ON Course_table.course_id = Enrollment_table.course_id
GROUP BY Course_table.course_id
) AS CourseEnrollments ON Teaching_table.course_id = CourseEnrollments.course_id
GROUP BY Faculty_table.Name
HAVING AVG(Enrollments) > 10;

