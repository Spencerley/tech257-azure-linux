# Requirement / Steps to deploy Sparta Test app
- Manually - working commands without user input
- Slowly automate with a bash script - install + use 'pm2'

On Azure VM we will need:
1. Ubuntu 22.04 LTS - Done
2. Update and upgrade (issue with user prompt with upgrade command) - Upgrade clean at the moment, if issue in future could be this portion- WORKS
   1. #update - `sudo apt update -y`
   2. #upgrade - `sudo apt upgrade -y`
3. Install web server - nginx (+ make sure enabled) (other webservers are available) - DONE
   1. `sudo apt install nginx -y`
4. Right version of nodeJS 20.x (installing node installs npm) - DONE
   1. `curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs`
5. 'app' folder with code - FIND OUT HOW TO COPY APP FOLDER TO VM - git clone command for automated one
   1. scp ~/.azure/config adminuser@myserver.eastus.cloudapp.com:/home/adminuser`"C:\Users\space\Downloads\nodejs20-sparta-test-app\app"`
   2. scp ~\Users\space\Downloads\nodejs20-sparta-test-app\app azureuser@tech257-spencer-sparta-test-app:~$
6. in app folder, we need to run 2 commands
   1. npm install
   2. npm start OR node app.js 
7. Test app is running in the browser: <publicIP> 3000
8. Make app run un the background


scp ~/Downloads\nodejs20-sparta-test-app\app azureuser@172.167.178.232:/home/adminuser/Documents/app


#!/bin/bash 

# update -
sudo apt update -y
# upgrade -
sudo apt upgrade -y
# nginx -
sudo apt install nginx -y
# node -
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs
# pm 2
sudo npm install pm2 -g
# repo -
git clone https://github.com/Spencerley/tech257-sparta-app.git
# cd into -
cd tech257-sparta-app
# cd again -
cd app
# npm -
npm install
# run -
pm2 start app.js