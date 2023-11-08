import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("insert into testdb.student values('Hari',21,22,82.5);")
mycursor.execute("insert into testdb.student values('Hari',21,22,82.5);")
mycursor.execute("insert into testdb.student values('Hari',21,22,82.5);")
mycursor.execute("insert into testdb.student values('Hari',21,22,82.5);")
conn.commit()
conn.close()