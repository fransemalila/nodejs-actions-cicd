#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app

#navigating into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NV_DIR/nvm.sh"  #loads nvm
[ -s "$NVM_DIR/bash_completio" ] && \. "$NVM_DIR/bash_completion"  #loads nvm bassh_completion 

#install node modules
np install

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &