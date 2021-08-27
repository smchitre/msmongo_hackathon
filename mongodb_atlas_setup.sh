#!/bin/bash

echo "Installing python3..."
sudo yum install python3



echo "Testing mongodb with mongosh..."
mongosh mongosh_local_test.js

python3 --version

echo "Installing pymongo driver..."
sudo python3 -m pip install pymongo

echo "Testing pymongo driver with python..."
python3 mongodb_atlas_test.py

#Install node 

unset NVM_DIR
echo "Installing node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. ~/.nvm/nvm.sh

nvm install node

node -e "console.log('Running Node.js ' + process.version)"

echo "Installing mongodb nodejs module..."
#Install mongodb driver (in project folder
npm install mongodb

echo "Testing mongodb nodejs with javascript..."

mongosh testMongoDBconnection_atlas.js

#Install JDK
echo "Installing OpenJDK 11..."
sudo yum install java-11-openjdk-devel -y

#Test java execution
cd /home/ec2-user/msmongo_hackathon
javac -cp "/home/ec2-user/msmongo_hackathon/lib/mongo-java-driver-3.12.10.jar" MongodbAtlasCommand.java
java -cp "/home/ec2-user/msmongo_hackathon/lib/mongo-java-driver-3.12.10.jar:/home/ec2-user/msmongo_hackathon"   MongodbAtlasCommand


