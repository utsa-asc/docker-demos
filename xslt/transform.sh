#!/bin/sh

## docker run - run the following command in a new container
## options passed:
### -i  : --interactive, well be using STDIN
### -t  : --tty, allocate a psuedo-tty
### -rm : automatically remove the container when the command exits
### -v : bindmount a volume, in this case, we are mounting the current
###      working directory/src with the container's /home directory
## rafagc/saxonb   : the container to run, located in the official docker registry
##                   at [https://hub.docker.com/r/rafagc/saxonb/]
## saxonb-xslt     : the command to run in the container
## ... the rest are the arguments passed to the saxonb-xslt command
##     see the saxonb documentation located at [http://manpages.ubuntu.com/manpages/trusty/man1/saxonb-xslt.1.html]

docker run -it --rm=true -v $(pwd)/src:/home rafagc/saxonb \
saxonb-xslt -s:xml/flex.xml -xsl:xslt/flex.xsl -o:html/flex.html
