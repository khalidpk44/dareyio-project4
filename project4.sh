sudo apt update -y
sudo apt upgrade -y
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt install -y mongodb
sudo service mongodb start
sudo apt install -y npm
sudo npm install body-parser
mkdir Books && cd Books
npm init
cd ..
cp ./server.js ./Books/
sudo npm install express mongoose
mkdir Books/apps
cp ./routes.js ./Books/apps
mkdir Books/apps/models
cp ./book.js ./Books/apps/models/
mkdir ./Books/public
cp ./script.js ./Books/public/
cp ./index.html ./Books/apps/
cd Books
node server.js
