#!/bin/bash

echo "Installing python3..."
sudo yum install python3

sudo cat << EOF > /etc/yum.repos.d/mongodb-org-5.0.repo
[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc
EOF

echo "Installing mongodb..."

sudo yum install -y mongodb-org

echo "Starting mongodb..."

sudo systemctl start mongod

#sudo systemctl status mongod

sudo systemctl enable mongod

echo "Testing mongodb with mongosh..."
mongosh mongosh_local_test.js

python3 --version

echo "Installing pymongo driver..."
sudo python3 -m pip install pymongo

echo "Testing pymongo driver with python..."
python3 mongodb_local_test.py

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

mongosh testMongoDBconnection_local.js

#Install JDK
echo "Installing OpenJDK 11..."
sudo yum install java-11-openjdk-devel -y

#Test java execution
cd /home/ec2-user/msmongo_hackathon
javac -cp "/home/ec2-user/msmongo_hackathon/lib/mongo-java-driver-3.12.10.jar" MongodbLocalCommand.java
java -cp "/home/ec2-user/msmongo_hackathon/lib/mongo-java-driver-3.12.10.jar:/home/ec2-user/msmongo_hackathon"   MongodbLocalCommand


