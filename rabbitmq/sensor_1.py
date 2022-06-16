import os
import csv
import pandas as pd
import pika

index_row = 0
last_row = 0
result_array = []

# Change this according to your folder path
path = "C:\\Advantech\\WISE750\\feature\\ch0"

try:
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
                        result_array.append(row)
                        connection = pika.BlockingConnection(
                            pika.ConnectionParameters(host='203.145.218.196'))
                        channel = connection.channel()

                        channel.queue_declare(queue='sensor1')

                        channel.basic_publish(exchange='', routing_key='sensor1', body=row.encode('UTF-8'))
                        print(" [x] Sent")
                        connection.close()

        last_row = index_row
        index_row = 0

except KeyboardInterrupt:
    print("Interrupted")
    print(pd.DataFrame(result_array))
    print(result_array[0])
