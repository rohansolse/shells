# Please keep this file outside of root directory.

# Tab for workspace
gnome-terminal --tab --active -- bash -c "cd ubweb; exec bash"
# open new tab and run UBBusiness.js with nodemon
gnome-terminal --tab -- bash -c "cd ubweb/Connector/Airlines-buisness; sudo nodemon UBBusiness.js; exec bash"
# open new tab and run UBConnector.js with nodemon
gnome-terminal --tab -- bash -c "scd ubweb/Connector/Airlines-Connector; sudo nodemon UBConnector.js; exec bash"
# open new tab and run daoapp.js with nodemon
gnome-terminal --tab -- bash -c "cd ubweb/Connector/Airlines-DAO; sudo nodemon daoapp.js; exec bash"
# open vscode with our project then frontend on browser and run redis
gnome-terminal --tab -- bash -c "code ubweb; xdg-open http://localhost:8080/; redis-server; exec bash"
# this will start frontend
gnome-terminal --tab -- bash -c "cd ubweb; sudo npm start; exec bash"
