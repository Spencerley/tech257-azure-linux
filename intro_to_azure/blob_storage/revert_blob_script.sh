#!/bin/bash

cd /tech257-sparta-app/app/views

rm index.ejs

cp index.ejs.backup index.ejs

# app location
cd ..

# use pm2 to kill the app running
pm2 stop app

# use pm2 to start the app
pm2 start app.js

# remove storage account you created in the first script
az storage account delete -n tech257spencerstorage -g tech257

# Test your script works



