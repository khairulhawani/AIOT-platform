from datetime import datetime
from datetime import timedelta
import mysql.connector
import pandas as pd
from mysql.connector import Error
import pickle
import numpy as np
#import pika

with open('./model_SVC' , 'rb') as f:
    SVC = pickle.load(f)
#print(datetime.now())
#print(datetime.now() - timedelta(hours=8))
rightnow = datetime.now() - timedelta(hours=8, seconds=0.5) #datetime.datetime.now(datetime.timezone.utc)
#print(rightnow)
result = []
result_array = []
index_row = 0
last_row = 0
try:
    while True:
        connection = mysql.connector.connect(
            host="203.145.218.196", 
            user="user",
            password="user",
            database="mydb"
        )
        
        data = connection.cursor()
        data.execute("SELECT * FROM tb_sensor WHERE sensor_id = '3' AND timestamp >= '" + str(rightnow) + "'") 
        myresult = data.fetchall()

        for row in myresult:
            index_row += 1
            if index_row <= last_row:
                continue
            else:
                timestamp_new  = row[0]
                peaktopeak_value = row[5]

                peaktopeak_reshape = np.array(row[5]).reshape(-1, 1)
                    
                # check prediction
                label = SVC.predict(peaktopeak_reshape) 
                
                mydb = mysql.connector.connect(
                    host="203.145.218.196", 
                    user="user",
                    password="user",
                    database="mydb"
                )
                mycursor = mydb.cursor()
                sql = "INSERT INTO tb_closet (timestamp_new, peaktopeak_value, label) VALUES ('" + str(timestamp_new) + "', '" + str(peaktopeak_value) + "', '"+ str(*label) + "')"

                mycursor.execute(sql)
                mydb.commit()

                msg = str(timestamp_new) + ", " + str(peaktopeak_value) + ", "+ str(*label)
                result.append(msg)
                result_array = np.array(result)
                print(' [x]')

        rightnow = timestamp_new

        last_row = index_row
        index_row = 0


except KeyboardInterrupt:
    print("Interrupted")
    #print(pd.DataFrame(result_array))
    print(result_array)
    print("Total Record: "+str(len(result_array)))
