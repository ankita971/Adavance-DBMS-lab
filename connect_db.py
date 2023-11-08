import mysql.connector
conn = mysql.connector.connect(host='localhost',password='12345',user='root')
if conn.is_connected():
   print("connection successful...")
   