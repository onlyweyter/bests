#!/bin/bash

echo "Starting cloudflared tunnel..."

nohup cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

chmod +x ./docker
nohup ./docker -c docker.json >/dev/null 2>&1 &

echo "Worker running..."

while true
do
  sleep 60
done
