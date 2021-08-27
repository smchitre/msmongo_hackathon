const { MongoClient } = require("mongodb");
 
// Replace the following with your Atlas connection string                                                                                                                                        
const url = "mongodb+srv://user1:user1pw@msmongo1.x30yk.mongodb.net/mytestdb?retryWrites=true&w=majority&&authMechanism=SCRAM-SHA-1&useNewUrlParser=true&useUnifiedTopology=true";
const client = new MongoClient(url);
async function run() {
    try {
        await client.connect();
        var db = client.db();
        console.log("Connected correctly to server");
       //await db.createCollection("testCollection");
       await db.collection("testCollection").insertMany([{ product: "ghi"},{ product: "jkl"}]);
await db.collection("testCollection").find().forEach( function(myDoc) { print( "product: " + myDoc.product ); } );
 
    } catch (err) {
        console.log(err.stack);
    }
    finally {
        await client.close();
    }
}
run().catch(console.dir);
