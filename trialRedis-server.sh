sudo apt update
sudo apt install redis-server
sudo nano /etc/redis/redis.conf
sudo systemctl restart redis
sudo systemctl enable redis-server
Redis-cli ping

