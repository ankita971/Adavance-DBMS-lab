import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.course_Table (course_id INT PRIMARY KEY,courseName varchar(225),credits INT);")
conn.close()