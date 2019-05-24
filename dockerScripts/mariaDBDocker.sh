#!/bin/bash

docker create \
  --name=mariadb_CS340 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MYSQL_ROOT_PASSWORD=Pike1868 \
  -e TZ=America/Los_Angeles \
  -e MYSQL_DATABASE=nfldb \
  -e MYSQL_USER=a \
  -e MYSQL_PASSWORD=anthony92 \
  -p 3306:3306 \
  -v /home/a/appData/mariadb_CS340:/config \
  --restart unless-stopped \
  linuxserver/mariadb


#   *note the following are optional
#   -e MYSQL_DATABASE=nfldb \
#   -e MYSQL_USER=a \
#   -e MYSQL_PASSWORD=anthony92 \

# Steps for creating mariadb docker
# download images
# create docker
# docker exec -it <enter name of container aka mariadb> bash
# when inside docker container
# mysql -u root -p
# <enter password>
# show databases;  (this will show you the available databases)
# create database <enter name of db>

