docker run -it --rm=true -v $(pwd)/src:/home rafagc/saxonb saxonb-xslt -s:xml/flex.xml -xsl:xslt/flex.xsl -o:html/flex.html
