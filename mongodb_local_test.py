from pymongo import MongoClient
# pprint library is used to make the output look more pretty
from pprint import pprint
# connect to MongoDB, change the << MONGODB URL >> to reflect your own connection string
client = MongoClient("127.0.0.1")
db=client.mytestdb
# Issue the serverStatus command and print the results
#serverStatusResult=db.command("serverStatus")
testCollectionDocs=db.testCollection.find()
for doc in testCollectionDocs:
   pprint(doc)
