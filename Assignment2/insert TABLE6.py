import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
mycursor=conn.cursor()
mycursor.execute("insert into Assignment2.Teaching_Table values (1, 301, 101);")
mycursor.execute("insert into Assignment2.Teaching_Table values (2, 302, 102);")
mycursor.execute("insert into Assignment2.Teaching_Table values (3, 303, 103);")
mycursor.execute("insert into Assignment2.Teaching_Table values (4, 304, 104);")
mycursor.execute("insert into Assignment2.Teaching_Table values (5, 305, 105);")
mycursor.execute("insert into Assignment2.Teaching_Table values (6, 305, 105);")
mycursor.execute("insert into Assignment2.Teaching_Table values (7, 307, 107);")
mycursor.execute("insert into Assignment2.Teaching_Table values (8, 308, 108);")
conn.commit()