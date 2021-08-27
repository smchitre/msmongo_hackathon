db = connect("localhost");
db = db.getSiblingDB('mytestdb');
docs = db.getCollectionNames();
console.log(docs);
db.testCollection.insertMany([{ product: "ghi"},{ product: "jkl"}]);
db.testCollection.find().forEach( function(myDoc) { print( "product: " + myDoc.product ); } );
//db.testCollection.drop();
//db.dropDatabase();
