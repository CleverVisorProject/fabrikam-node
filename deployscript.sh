echo "Hello World" && sudo apt-get update && sudo apt-get -y upgrade && echo "Hello World 1" && curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs && echo "Hello World 2" && ln -sf /usr/bin/nodejs /usr/bin/node && sudo apt-get install -y nginx && sudo cp node-app-nginx-config /etc/nginx/sites-available/ && sudo service nginx restart && sudo npm install -g pm2 && sudo pm2 start -f app.js && sudo pm2 startup systemd && sudo pm2 save && echo "End of script run"
