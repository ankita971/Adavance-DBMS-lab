import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.Teaching_Table (TeachingId INT PRIMARY KEY,Faculty_id INT,course_id INT,FOREIGN KEY (Faculty_id) REFERENCES Faculty_Table(Faculty_id),FOREIGN KEY (course_id) REFERENCES course_Table(course_id));")
conn.close()