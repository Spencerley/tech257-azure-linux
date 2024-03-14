#!/bin/bash

# create storage account
az storage account create --name tech257spencerstorage --resource-group tech257 --location uksouth --sku Standard_LRS --allow-blob-public-access true

# enable anonymous blob access on storage account

# create container
az storage container create --account-name tech257spencerstorage --name appcontainer --public-access blob --auth-mode login

# download a cat picture (jpg) using the curl command
curl -o cat.jpg https://i.natgeofe.com/n/4cebbf38-5df4-4ed0-864a-4ebeb64d33a4/NationalGeographic_1468962_4x3.jpg

# upload blob
az storage blob upload --account-name tech257spencerstorage --container-name appcontainer --name cat.jpg --file cat.jpg --auth-mode login

# make copy of index to revert back to later
cd tech257-sparta-app/app/views

cp index.ejs index.ejs.backup

# line 28 modify homepage file (index.ejs found in views folder) to include cat image in blob storage (could use sed command to replace )
sed -i '/<h2>/a\ <img src="https://tech257spencerstorage.blob.core.windows.net/appcontainer/cat.jpg" alt="cat">' tech257-sparta-app/app/views/index.ejs

# app location
cd ../../../home/adminuser/tech257-sparta-app/app

# use pm2 to start the app
pm2 stop app

# start the app using pm2
pm2 start app.js

# Test your script works
