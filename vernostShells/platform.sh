#!/bin/sh
gnome-terminal --tab --active 
redis-server
code ubweb
sleep 30
xdg-open http://localhost:8080/