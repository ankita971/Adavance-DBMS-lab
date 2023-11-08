import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute ("create table if not exists Assignment2.student_Table(Student_id INT PRIMARY KEY,Name varchar(225),email varchar(225),Phone varchar(25),Address TEXT);")
conn.close()