#!/bin/bash

# Providing complete permissions to the get-files folder
sudo chmod -R 777 /home/ec2-user/get-files

# Navigating to the web application folder
cd /home/ec2-user/get-files/web-app

# Installing node modules for the web application
npm install

# Starting web application in the background
node web-app/index.js > app.out.log 2> app.err.log < /dev/null & 