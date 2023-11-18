import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.ExamResults_Table(ResultsID INT PRIMARY KEY,Student_id INT,Exam_id INT,FOREIGN KEY (Student_id) REFERENCES student_Table(Student_id),FOREIGN KEY (Exam_id) REFERENCES Exam_Table(Exam_id),Score Decimal(5,2));")
conn.close()