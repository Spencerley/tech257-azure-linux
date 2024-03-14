# Create a script to run on a fresh VM. This script will be used in the Shell to run the app on a fresh VM and set up the database for the frontend. This will allow you to run the same script on multiple VMs without having to manually install the dependencies and files each time.

# Ports that need to be open: SSH (other ports we can discuss)
# Should go in private-subnet

#!/bin/bash

# Update & upgrade
sudo apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt-get install gnupg curl -y

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

sudo apt-get update -y


# Install Mongo DB 7.0.5 (rather than just the latest version). However, you might install the latest version initially as it does work.
# This has an error
# sudo apt-get install -y mongodb-org=7.0.5 mongodb-org-database=7.0.5 mongodb-org-server=7.0.5 mongodb-mongosh=7.0.6 mongodb-org-mongos=7.0.5 mongodb-org-tools=7.0.5

# Install the latest version
sudo apt-get install -y mongodb-org
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-database hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-mongosh hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

# Install Mongo DB
# Configure Mongo DB's bindIp to be 0.0.0.0 (accept connections from anywhere)
sudo sed -i 's@127.0.0.1@0.0.0.0@' /etc/mongod.conf
# Make sure Mongo DB service is started + enabled
sudo systemctl daemon-reload
sudo systemctl enable mongod
sudo systemctl start mongod

# New requirement on app VM
# Before running npm install, you will need to set the environment variable DB_HOST.
# The value set must be mongodb://<yourIP>:27017/posts (except the IP address must be the private IP address of your database VM)

