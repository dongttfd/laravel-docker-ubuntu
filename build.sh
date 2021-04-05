#!/bin/sh

docker build . --rm -t ubuntu_docker

docker-compose down

docker-compose build --no-cache --force-rm 

docker-compose up -d