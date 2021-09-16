import os
import sys

temp_path = '/tmp'
file_name = 'delft.txt'
path = os.path.join(temp_path, file_name)
with open(path, 'w') as wd:
    wd.write("This is test line")
    wd.close()
    print("File created successfully")
