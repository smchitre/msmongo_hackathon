import org.bson.BsonDocument;
import org.bson.BsonInt64;
import org.bson.Document;
import org.bson.conversions.Bson;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoException;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoCollection;
public class MongodbLocalCommand {
    public static void main(String[] args) {
        // Replace the uri string with your MongoDB deployment's connection string
        String uri = "mongodb://localhost/mytestdb";
        try (MongoClient mongoClient = MongoClients.create(uri)) {
            MongoDatabase database = mongoClient.getDatabase("admin");
            try {
                Bson command = new BsonDocument("ping", new BsonInt64(1));
                Document commandResult = database.runCommand(command);
                System.out.println("Connected successfully to server.");
            } catch (MongoException me) {
                System.err.println("An error occurred while attempting to run a command: " + me);
            }
            MongoDatabase db2 = mongoClient.getDatabase("mytestdb");
            MongoCollection<Document> collection = db2.getCollection("testCollection");
            MongoCursor<Document> cursor = collection.find().iterator();
            try {
                  while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                  }
            } 
               catch (MongoException me) {
                System.err.println("An error occurred while attempting to query database: " + me);
            }
            finally {
                  cursor.close();
            }
        }
        }
    }
