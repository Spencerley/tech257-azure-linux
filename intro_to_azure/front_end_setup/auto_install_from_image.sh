#!/bin/bash

# cde to app using user data
 cd /tech257-sparta-app/app

# stop pm2
pm2 stop app

# run pm2 -
pm2 start app.js