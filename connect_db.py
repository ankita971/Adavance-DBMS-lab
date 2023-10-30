import mysql.connector
conn=mysql.connector.connect(host='localhost',user='root',password='Simran12@')
if conn.is_connected():
    print("connection sucessful")