from pymongo import MongoClient
# pprint library is used to make the output look more pretty
from pprint import pprint
# connect to MongoDB, change the << MONGODB URL >> to reflect your own connection string
client = MongoClient("mongodb+srv://user1:user1pw@msmongo1.x30yk.mongodb.net/mytestdb?retryWrites=true&w=majority")
db=client['mytestdb']
# print the contents of collection
testCollectionDocs=db["testCollection"].find()
for doc in testCollectionDocs:
   pprint(doc)
