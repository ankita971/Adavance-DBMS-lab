import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("select * from testdb.student;")
for i in mycursor.fetchall():
    print(i)
conn.close()    