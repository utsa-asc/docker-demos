#!/bin/sh

## docker run -it, same as demo 1
## -p 8080          :  we are going to bind our host's port 8080 to the container's port 8080
##                     this will allow us to access tomcat via the web at localhost:8080
## tomcat:8-alpine  :  this is the name of our container on the docker hub registry
##                     to see how this container is built, go ahead and look at the
##                     dockerfile linked at [https://hub.docker.com/_/tomcat/]
docker run -it -p 8001:8080 tomcat:8-alpine
