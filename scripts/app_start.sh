#!/bin/bash

# Providing complete permissions to the get-files folder
sudo chmod -R 777 /home/ec2-user/git-files/web-app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Enabling admin access
sudo su >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Navigating to the web application folder
cd /home/ec2-user/git-files/web-app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Installing node modules for the web application
npm install >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Starting web application in the background
nohup node index.js > /dev/null 2>&1 &  >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
