import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="user",
  password="user",
  database="mydb"
)

mycursor = mydb.cursor()

sql = "INSERT INTO tb_sensor (min, max, avg, peak, peaktopeak, rms) VALUES (4.895770072937012, 4.89882, 4.89722, 4.89882, 0.0030508, 4.89725)"
mycursor.execute(sql)

mydb.commit()

print(mycursor.rowcount, "record inserted.")