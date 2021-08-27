const mongo = require('mongodb');

const MongoClient = mongo.MongoClient;

const url = "mongodb+srv://user1:user1pw@msmongo1.x30yk.mongodb.net/mytestdb?retryWrites=true&w=majority&authMechanism=SCRAM-SHA-1&useNewUrlParser=true&useUnifiedTopology=true";

MongoClient.connect(url, { useNewUrlParser: true }, (err, client) => {

    if (err) throw err;

    const db = client.db("mytestdb");

    db.listCollections().toArray().then((docs) => {

        console.log('Available collections:');
        docs.forEach((doc, idx, array) => { console.log(doc.name) });

    }).catch((err) => {

        console.log(err);
    }).finally(() => {

        client.close();
    });
});
