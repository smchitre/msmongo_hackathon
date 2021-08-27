package net.codejava.mongodb;
 
import java.net.UnknownHostException;
import java.util.List;
import java.util.Set;
 
import com.mongodb.DB;
import com.mongodb.MongoClient;
 
public class JavaMongoDBConnection {
 
    public static void main(String[] args) {
        try {

            MongoClientURI uri = "mongodb+srv://user1:user1pw@msmongotestcluster.x30yk.mongodb.net/mytestdb?retryWrites=true\\&w=majority\\&authMechanism=SCRAM-SHA-1\\&useNewUrlParser=true\\&useUnifiedTopology=true";
             
            MongoClient mongoClient = new MongoClient(uri);
             
            List<String> databases = mongoClient.getDatabaseNames();
             
            for (String dbName : databases) {
                System.out.println("- Database: " + dbName);
                 
                DB db = mongoClient.getDB(dbName);
                 
                Set<String> collections = db.getCollectionNames();
                for (String colName : collections) {
                    System.out.println("\t + Collection: " + colName);
                }
            }
             
            mongoClient.close();
             
        } catch (UnknownHostException ex) {
            ex.printStackTrace();
        }
         
    }
}



