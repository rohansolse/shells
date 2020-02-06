#!/bin/sh
clear
gnome-terminal --tab --active 
code ubweb
sleep 30
xdg-open http://localhost:8080/
redis-server