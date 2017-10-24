#!/bin/sh

docker build -t my-tomcat .

docker run -it -p 8001:8080 my-tomcat

## docker build     : tell docker to build a container
## -t my-tomcat     : give this container the name "my-tomcat"
## .                : use the Dockerfile in the current directory

## docker run -it
## -p 8001:8080     :  we are going to bind our host's port 8001 to the
##                       container's port 8080
##                     this will allow us to access tomcat via
##                       the web at localhost:8080
## my-tomcat        :  this is the name of the container created by
##                       the docker build command
