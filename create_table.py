import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("create table testdb.student (Name varchar(100),Rollno int(6), Age int(2),Mark float);")
conn.close()