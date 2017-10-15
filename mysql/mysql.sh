#!/bin/sh

## docker run -it, same as demo 1
## --rm             :  make sure we remove the container when we are done
## -p 3306          :  for now, we also bind our hosts's 3306 port to the container's
##                     so we can connect to mysql from the host, if needed
## my-mysql         :  the name of the container given in the docker build step

docker run -it --rm -p 3306:3306 -v $(pwd)/mysql-data:/var/lib/mysql my-mysql
