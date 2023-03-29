#!/bin/bash
#!/bin/bash -xe
source /home/ec2-user/.bash_profile
sudo chmod -R 777 /home/ec2-user/git-files/web-app
cd /home/ec2-user/git-files/web-app
npm install
mkdir test

nohup npm start > /dev/null 2>&1 &
# sudo su
# cd /home/ec2-user/git-files/web-app
# npm run start

# # Enabling admin access
# sudo su
# 
# # Providing complete permissions to the get-files folder
# sudo chmod -R 777 /home/ec2-user/git-files/web-app
# 
# mkdir test
# # Navigating to the web application folder
# cd /home/ec2-user/git-files/web-app
# 
# mkdir test2
# # Installing node modules for the web application
# npm install
# 
# # Starting web application in the background
# nohup node index.js > /dev/null 2>&1 & 
