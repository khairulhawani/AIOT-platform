from datetime import datetime
import mysql.connector
from mysql.connector import Error
import pickle
import numpy as np

with open('./model_SVC' , 'rb') as f:
    SVC = pickle.load(f)

try:
    while True:
        connection = mysql.connector.connect(
            host="203.145.218.196",
            user="user",
            password="user",
            database="mydb"
        )
        #index_row = 0
        #last_row = 0
        #result_array = []
        rightnow = datetime.now()
        timestamp_new_all =[]
        peaktopeak_value_all =[]
        label_all=[]

        data = connection.cursor()
        data.execute("SELECT * FROM tb_sensor WHERE sensor_id = '3' AND timestamp >= '" + str(rightnow) + "'")
        myresult = data.fetchall()

        for x in myresult:
            #print(x)
            timestamp_new  = x[0]
            timestamp_new_all.append(timestamp_new)
            peaktopeak_value = x[5]
            peaktopeak_value_all.append(peaktopeak_value)
            
            peaktopeak_reshape = np.array(x[5]).reshape(-1, 1)
            #peaktopeak = np.array(df['peaktopeak']).reshape(-1, 1)
            
            # check prediction
            label = SVC.predict(peaktopeak_reshape) 
            label_all.append(label)
                
            #print (x)
            mycursor = connection.cursor()
            sql = "INSERT INTO tb_closet (timestamp_new, peaktopeak_value, label) VALUES ('" + str(timestamp_new) + "', " + str(peaktopeak_value) + ", " + (','.join(label)) + ")"
            mycursor.execute(sql)
            connection.commit()


except KeyboardInterrupt:
    print("Interrupted")
    #print(pd.DataFrame(result_array))
    #print(result_array[0])
