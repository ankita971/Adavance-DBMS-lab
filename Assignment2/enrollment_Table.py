import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.enrollment_Table (enrollment_id INT PRIMARY KEY,Student_id INT,course_id INT,FOREIGN KEY (Student_id) REFERENCES student_Table(Student_id),FOREIGN KEY (course_id) REFERENCES course_Table(course_id),enrollmentDate DATE);")
conn.close()