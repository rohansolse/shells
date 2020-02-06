#!/bin/sh
clear
gnome-terminal --tab --active
cd ubweb/Connector/Airlines-DAO/
sudo nodemon --inspect daoapp.js
# sudo nodemon daoapp.js