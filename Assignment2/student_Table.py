import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute ("create table if not exists databse.student_Table(Student_id INT PRIMARY KEY,Name varchar(225),email varchar(225),Phone varchar(25),Address TEXT);")
conn.close()