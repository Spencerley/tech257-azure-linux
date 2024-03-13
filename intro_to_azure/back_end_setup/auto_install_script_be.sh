# Create a script to run on a fresh VM. This script will be used in the Shell to run the app on a fresh VM and set up the database for the frontend. This will allow you to run the same script on multiple VMs without having to manually install the dependencies and files each time.

# Ports that need to be open: SSH (other ports we can discuss)
# Should go in private-subnet
# Update & upgrade
sudo apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# Install Mongo DB 7.0.5 (rather than just the latest version). However, you might install the latest version initially as it does work.
# Install Mongo DB
# Configure Mongo DB's bindIp to be 0.0.0.0 (accept connections from anywhere)
# Make sure Mongo DB service is started + enabled

# New requirement on app VM
# Before running npm install, you will need to set the environment variable DB_HOST.
# The value set must be mongodb://10.0.0.68:27017/posts (except the IP address must be the private IP address of your database VM)

