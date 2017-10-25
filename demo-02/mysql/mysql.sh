#!/bin/sh

## docker build ...  : same as demo 1
## docker run -it    : same as demo 1
## --rm              :  make sure we remove the container when we are done
## -p 3306           :  for now, we also bind our hosts's 3306 port to the container's
##                     so we can connect to mysql from the host, if needed
## my-mysql          :  the name of the container given in the docker build step
docker build -t my-mysql .
docker run -it -p 3302:3306 -v $(pwd)/mysql-data:/var/lib/mysql my-mysql
