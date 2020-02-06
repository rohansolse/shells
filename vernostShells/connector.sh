#!/bin/sh/
clear
gnome-terminal --tab --active
cd ubweb/Connector/Airlines-Connector/
sudo nodemon --inspect UBConnector.js
# sudo nodemon UBConnector.js