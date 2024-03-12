#!/bin/bash 

# update -
sudo apt update -y

# upgrade to ignore user input -
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# nginx -
sudo apt install nginx -y

# reverse proxy with user data path -
sudo sed -i 's@try_files $uri $uri/ =404;@proxy_pass http://127.0.0.1:3000;@g' /etc/nginx/sites-available/default

# restart and enable nginx -
sudo systemctl restart nginx
sudo systemctl enable nginx

# install node -
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs

# install pm2 -
sudo npm install pm2 -g

# clode down the repo -
git clone https://github.com/Spencerley/tech257-sparta-app.git

# path to app for user data -
 cd /tech257-sparta-app/app

# npm -
npm install

# stop pm2 -
pm2 stop app

# run pm2 -
pm2 start app.js