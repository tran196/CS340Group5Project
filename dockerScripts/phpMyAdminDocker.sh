#!/bin/bash


docker run --name myadmin_CS340 -d --link mariadb_CS340:db -p 8080:80 phpmyadmin/phpmyadmin

# Steps for creating PHPMyAdmin docker
# download images
# create docker
# use name of mysql/mariadb container when using create
