import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("create table if not exists databse.Faculty_Table (Faculty_id INT PRIMARY KEY,Name varchar(255),email varchar(255),Phone varchar(20),Department varchar(255));")
conn.close()