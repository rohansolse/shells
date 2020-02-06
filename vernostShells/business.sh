#!/bin/sh
clear
gnome-terminal --tab --active
cd ubweb/Connector/Airlines-buisness/
sudo nodemon --inspect UBBusiness.js
# sudo nodemon UBBusiness.js