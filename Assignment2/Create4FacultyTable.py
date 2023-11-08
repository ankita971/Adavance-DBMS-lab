import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists Assignment2.Faculty_Table (Faculty_id INT PRIMARY KEY,Name varchar(255),email varchar(255),Phone varchar(20),Department varchar(255));")
conn.close()