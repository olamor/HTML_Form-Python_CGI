#!/bin/bash

echo "=================================
      Installing Git ...
================================="

sleep 2

apt update && apt install git

echo "=================================
      Installing Docker ...
================================="

sleep 2

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

echo "=================================
      Installed successfully
================================="

sleep 2


echo "=================================
  Installing Docker Compose ...
================================="

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "=================================
      Installed successfully
=================================
         view version ..."

sleep 2

docker-compose --version 
	
    git clone https://
    cd ...
    docker-compose up -d