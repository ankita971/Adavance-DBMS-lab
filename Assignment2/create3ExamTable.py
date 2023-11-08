import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists Assignment2.Exam_Table (Exam_id INT PRIMARY KEY,ExamDate DATE,ExamTime TIME,Location varchar(225));")
conn.close()