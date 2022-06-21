import mysql.connector
from mysql.connector import Error

import os
import csv
import pandas as pd

index_row = 0
last_row = 0
result_array = []

# Change this according to your folder path
path = "C:\\ch1"

connection = mysql.connector.connect(
  host="203.145.218.196",
  user="user",
  password="user",
  database="mydb"
)

try:
    if connection.is_connected():
        cursor = connection.cursor()
        while True:
            # Open every file in the folder (Make sure only 1 file exists)
            for filename in os.listdir(path):
                with open(os.path.join(path, filename), 'r') as f: # open in readonly mode
                    reader = csv.reader(f)
                    for row in reader:
                        index_row += 1
                        if index_row <= 3 or index_row <= last_row:
                            continue
                        else:
                            timestamp = row[0] 
                            min = row[1]
                            max = row[2]
                            avg = row[3]
                            peak = row[4]
                            peaktopeak = row[5]
                            rms = row[6]
                            sensor_id = row[7]

                            sql = "INSERT INTO tb_sensor (timestamp, min, max, avg, peak, peaktopeak, rms, sensor_id) VALUES ('" + str(timestamp) + "', " + str(min) + ", " + str(max) + ", " + str(avg) + ", " + str(peak) + ", " + str(peaktopeak) + ", " + str(rms) + ", " + str(sensor_id) + ")"
                            cursor.execute(sql)

                            connection.commit()

                            result_array.append(row)

            last_row = index_row
            index_row = 0

except KeyboardInterrupt:
    print("Interrupted")
    print(pd.DataFrame(result_array))
    print(result_array[0])

except Error as e:
    print("Error while connecting to MySQL", e)
    
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")