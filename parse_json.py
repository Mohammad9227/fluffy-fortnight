import json

with open('des_sec_grp.json', 'r') as fp:
    data = json.load(fp)  # load fileobject to dictionary
    print(type(data))
    print((data))
    print(data['SecurityGroups'][0]['GroupName'])
    print(data['SecurityGroups'][0]['GroupId'])
