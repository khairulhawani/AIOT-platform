import pandas as pd
import csv

index_row = 0
result_array = []

with open('C:\\Advantech\WISE750\\feature\\ch0\\DATA_20220516203320_0.csv', 'r') as fd:
    reader=csv.reader(fd)
    for row in reader:
        index_row += 1
        if index_row < 4:
            continue
        result_array.append(row)

print(pd.DataFrame(result_array))
# print (df)