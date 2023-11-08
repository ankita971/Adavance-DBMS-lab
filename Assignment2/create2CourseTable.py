import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists Assignment2.course_Table (course_id INT PRIMARY KEY,courseName varchar(225),credits INT);")
conn.close()