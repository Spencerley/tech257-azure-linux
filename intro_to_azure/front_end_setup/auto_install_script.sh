# Script to add all the files to a fresh VM and run the app. 
# This script will be used in the Shell to run the app on a fresh VM.

#!/bin/bash 

# update -
sudo apt update -y

# upgrade bypassing user input-
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# install nginx -
sudo apt install nginx -y

# change line in nginx default for reverse proxy
sudo sed -i 's@try_files $uri $uri/ =404;@proxy_pass http://127.0.0.1:3000;@g' ../../etc/nginx/sites-available/default

# restart and enable nginx
sudo systemctl restart nginx
sudo systemctl enable nginx

# install node -
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs

# install pm2
sudo npm install pm2 -g

# clone down repo -
git clone https://github.com/Spencerley/tech257-sparta-app.git

# cd into our app -
 cd ../../../home/adminuser/tech257-sparta-app/app

# npm -
npm install

# stop pm2
pm2 stop app

# run pm2 -
pm2 start app.js