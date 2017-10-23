
FROM tomcat:8-alpine

COPY ./context.xml /usr/local/tomcat/conf/context.xml
COPY ./webapps/publish /usr/local/tomcat/webapps/publish
COPY ./webapps/ROOT /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
