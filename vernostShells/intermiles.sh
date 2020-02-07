# Please keep this file outside of root directory.

# Tab for workspace
gnome-terminal --tab --active
# open new tab and run UBBusiness.js with nodemon
gnome-terminal --tab -- bash -c "sudo nodemon ubweb/Connector/Airlines-buisness/UBBusiness.js; exec bash"
# open new tab and run UBConnector.js with nodemon
gnome-terminal --tab -- bash -c "sudo nodemon ubweb/Connector/Airlines-Connector/UBConnector.js; exec bash"
# open new tab and run daoapp.js with nodemon
gnome-terminal --tab -- bash -c "sudo nodemon ubweb/Connector/Airlines-DAO/daoapp.js; exec bash"
# open vscode with our project then frontend on browser and run redis
gnome-terminal --tab -- bash -c "code ubweb; xdg-open http://localhost:8080/; redis-server; exec bash"
# this will start frontend
cd ubweb
sudo npm start