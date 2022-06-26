from datetime import datetime
from datetime import timedelta
import mysql.connector
from mysql.connector import Error
import pickle
import numpy as np
import os
import csv
import pandas as pd
import pika

with open('./model_SVC' , 'rb') as f:
    SVC = pickle.load(f)
print(datetime.now())
print(datetime.now() - timedelta(hours=8))
rightnow = datetime.now() - timedelta(hours=8, seconds=2) #datetime.datetime.now(datetime.timezone.utc)
print(rightnow)
result_array = []
index_row = 0
last_row = 0
try:
    while True:
        connection = mysql.connector.connect(
            host="203.145.218.196", #
            user="user",
            password="user",
            database="mydb"
        )
        
        data = connection.cursor()
        data.execute("SELECT * FROM tb_sensor WHERE sensor_id = '3' AND timestamp >= '" + str(rightnow) + "'") #  
        myresult = data.fetchall()

        for x in myresult:
            index_row += 1
            if index_row <= last_row:
                continue
            else:
                timestamp_new  = x[0]
                peaktopeak_value = x[5]

                peaktopeak_reshape = np.array(x[5]).reshape(-1, 1)
                    
                # check prediction
                label = SVC.predict(peaktopeak_reshape) 
                
                connection = pika.BlockingConnection(
                    pika.ConnectionParameters(host='203.145.218.196')) # 203.145.218.196
                channel = connection.channel()

                msg = str(timestamp_new) + ", " + str(peaktopeak_value) + ", "+ str(*label)
                result_array.append(msg)

                channel.queue_declare(queue='sensor_closet')
                channel.basic_publish(exchange='', routing_key='sensor_closet', body=(msg).encode('UTF-8'))
                print(" [x] Sent")
                connection.close()
        rightnow = timestamp_new

        last_row = index_row
        index_row = 0


except KeyboardInterrupt:
    print("Interrupted")
    print(pd.DataFrame(result_array))
    print(result_array[0])
