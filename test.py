import os
import mysql.connector

HOST=os.environ.get("MYSQL_HOST")
PORT=os.environ.get("MYSQL_PORT")

mydb = mysql.connector.connect(
  host=HOST,
  user="root",
  password="example"
)

mycursor = mydb.cursor()

print(mycursor)