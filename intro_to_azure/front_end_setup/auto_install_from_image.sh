# Create your VM from an image which has all the dependencies and files you wish to run then run this in User Data. 
# This will allow you to run the same script on multiple VMs without having to manually install the dependencies and files each time.
# This is the quickest way to get your app up and running on a fresh VM as there is only a small part of the script that needs to run.

#!/bin/bash

# cde to app using user data
cd /tech257-sparta-app/app

# npm -
npm install

# stop pm2
pm2 stop app

# run pm2 -
pm2 start app.js