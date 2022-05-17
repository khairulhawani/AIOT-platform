import os
import csv
import pandas as pd

index_row = 0
last_row = 0
result_array = []

# Change this according to your folder path
path = "E:\\Documents\\National Pingtung University\\Advanced Information Management\\Sensor Data"

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

        last_row = index_row
        index_row = 0

except KeyboardInterrupt:
    print("Interrupted")
    print(pd.DataFrame(result_array))