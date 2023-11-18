import mysql.connector
conn=mysql.connector.connect(host='localhost',user='root',password='t23cs006')

mycursor=conn.cursor()
mycursor.execute("create database if not exists databse")
conn.close()