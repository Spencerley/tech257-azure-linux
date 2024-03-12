#!/bin/bash 

# update -
sudo apt update -y

# upgrade -
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

# nginx -
sudo apt install nginx -y

# change line in default
sudo sed -i 's@try_files $uri $uri/ =404;@proxy_pass http://127.0.0.1:3000;@g' ../../etc/nginx/sites-available/default

# restart nginx
sudo systemctl restart nginx
sudo systemctl enable nginx

# node -
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs

# pm 2
sudo npm install pm2 -g

# repo -
git clone https://github.com/Spencerley/tech257-sparta-app.git

# cd into -
 cd ../../../home/adminuser/tech257-sparta-app/app

# npm -
npm install

# stop pm2
pm2 stop app

# run -
pm2 start app.js