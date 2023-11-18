import mysql.connector
conn=mysql.connector.connect(host='localhost',user='root',password='t23cs006')
if conn.is_connected():
    print("connection sucessful")