import mysql.connector
conn = mysql.connector.connect(host='localhost',password='t23cs006',user='root')
mycursor=conn.cursor()
mycursor.execute("insert into databse.exam_Table values (201, '2023-11-10', '9:00', 'Exam Hall A');")
mycursor.execute("insert into databse.exam_Table values (202, '2023-11-12', '2:00', 'Exam Hall B');")
mycursor.execute("insert into databse.exam_Table values (203, '2023-11-15', '10:30', 'Exam Hall C');")
mycursor.execute("insert into databse.exam_Table values (204, '2023-11-18', '3:15', 'Exam Hall D');")
mycursor.execute("insert into databse.exam_Table values (205, '2023-11-20', '1:00', 'Exam Hall E');")
conn.commit()
conn.close()