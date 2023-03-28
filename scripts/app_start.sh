#!/bin/bash

# Providing complete permissions to the get-files folder
sudo chmod -R 777 /home/ec2-user/git-files/web-app

# Navigating to the web application folder
cd /home/ec2-user/git-files/web-app

# Installing node modules for the web application
sudo npm install

# Starting web application in the background
sudo node web-app/index.js > app.out.log 2> app.err.log < /dev/null & 