#!/bin/sh

docker build . --rm -t dongtt/laravel-ubuntu

docker-compose down

docker-compose build --no-cache --force-rm 

docker-compose up -d