import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.Exam_Table (Exam_id INT PRIMARY KEY,ExamDate DATE,ExamTime TIME,Location varchar(225));")
conn.close()